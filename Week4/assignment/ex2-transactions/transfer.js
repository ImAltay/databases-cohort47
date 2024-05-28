import { MongoClient, ServerApiVersion } from 'mongodb';
import dotenv from 'dotenv';
dotenv.config();

export async function transfer(from, to, amount, remark, collection) {
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

    collection.findOneAndUpdate();
  } catch (err) {
    console.log(err);
  } finally {
    await client.close();
  }
}
