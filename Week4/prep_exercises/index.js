const { MongoClient } = require('mongodb');
require('dotenv').config();

const recipe1 = {
  name: 'burger',
  description: 'Best burger',
  ingredients: [
    {
      name: 'meat',
      amount: 1,
      unit: 'pound',
    },
    {
      name: 'lettuce',
      amount: 1,
      unit: 'leaf',
    },
    {
      name: 'tomato',
      amount: 1,
      unit: 'slice',
    },
    {
      name: 'bun',
      amount: 2,
      unit: 'piece',
    },
  ],
  instructions: [
    'put meat on bun',
    'put lettuce on meat',
    'put tomato on lettuce',
    'put bun on tomato',
    'enjoy',
  ],
  categories: ['dinner', 'lunch', 'main course'],
  created_at: new Date(),
};

async function main() {
  const uri = process.env.MONGO_URI;
  const client = new MongoClient(uri);

  try {
    await client.connect();
    console.log('Connected to MongoDB');

    const result = await client
      .db('databaseWeek3')
      .collection('recipes')
      .insertOne(recipe1);
    //end
  } catch (err) {
    console.error(err);
  } finally {
    await client.close();
    console.log('Disconnected from MongoDB');
  }
}

main();
