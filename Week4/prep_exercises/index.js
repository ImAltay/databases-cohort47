import { MongoClient } from 'mongodb';
import dotenv from 'dotenv';
dotenv.config();
import { recipes } from './data.js';

async function main() {
  const uri = process.env.MONGO_URI;
  const client = new MongoClient(uri);

  try {
    await client.connect();
    console.log('Connected to MongoDB');

    const result = await client
      .db('databaseWeek3')
      .collection('recipes')
      .insertMany(recipes);
    //end
  } catch (err) {
    console.error(err);
  } finally {
    await client.close();
    console.log('Disconnected from MongoDB');
  }
}

main();
