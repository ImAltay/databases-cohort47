import { MongoClient, ServerApiVersion } from 'mongodb';
import dotenv from 'dotenv';
dotenv.config();
import { dummyData } from './dummyData.js';

export async function setup() {
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
    const collection = db.collection('accounts');

    await collection.deleteMany({});
    console.log('db cleaned up');
    await collection.insertMany(dummyData);
    console.log('many new inserted');
  } catch (err) {
    console.log(err);
  } finally {
    await client.close();
  }
}
