const { MongoClient, ServerApiVersion, ObjectId } = require('mongodb');
require('dotenv').config();
const csv = require('csv-parser');
const fs = require('fs');

async function seedDb(collection) {
  return new Promise((resolve, reject) => {
    const results = [];
    fs.createReadStream('population_pyramid_1950-2022.csv')
      .pipe(csv())
      .on('data', (data) => {
        data.M = Number(data.M);
        data.F = Number(data.F);
        data.Year = Number(data.Year);
        results.push(data);
      })
      .on('end', async () => {
        try {
          await collection.insertMany(results);
          console.log('many inserted');
          resolve();
        } catch (err) {
          reject(err);
        }
      });
  });
}

async function getTotalPopulation(country, collection) {
  const data = await collection.find({ Country: country }).toArray();
  const pipeline = [
    { $match: { Country: country } },
    { $group: { _id: '$Year', total: { $sum: { $add: ['$M', '$F'] } } } },
    { $sort: { _id: 1 } },
  ];

  const result = await collection.aggregate(pipeline).toArray();
  console.log(result);
}

async function getContinentTotalPopulation(year, age, collection) {
  // regex for uppercase and space generated via chatGPT
  const regex = /^[A-Z\s]+$/;

  const pipeline = [
    { $match: { Country: { $regex: regex }, Year: year, Age: age } },
    {
      $group: {
        _id: '$Country',
        Country: { $first: '$Country' },
        Year: { $first: '$Year' },
        Age: { $first: '$Age' },
        M: { $sum: '$M' },
        F: { $sum: '$F' },
        TotalPopulation: { $sum: { $add: ['$M', '$F'] } },
      },
    },
    { $sort: { Country: 1 } },
  ];
  const result = await collection.aggregate(pipeline).toArray();

  // mongodb does not allow to generation of new id in aggregation. but in makeme.md this result is how it should be. I tried to mimic makeme.md. but I am not sure if this is the correct way to do it.
  result.forEach((element) => {
    element._id = new ObjectId();
  });
  console.log(result);
}

async function main() {
  if (process.env.MONGO_URI == null) {
    throw new Error('no mongodb uri defined');
  }
  const client = new MongoClient(process.env.MONGO_URI, {
    serverApi: ServerApiVersion.v1,
  });

  try {
    await client.connect();
    console.log('Connected to MongoDB');

    const db = client.db('databaseWeek4');
    const collection = db.collection('countries');

    // csv to mongodb
    await seedDb(collection);
    // array of the total population (M + F over all age groups) for a given Country per year
    await getTotalPopulation('Netherlands', collection);
    // array of the total population (M + F) for all countries in a given continent for a given year
    await getContinentTotalPopulation(2020, '100+', collection);
  } catch (err) {
    console.log(err);
  } finally {
    client.close();
    console.log('disconnected from mongo');
  }
}

main();
