import { MongoClient, ServerApiVersion } from 'mongodb';
import dotenv from 'dotenv';
dotenv.config();

export async function transfer(from, to, amount, remark) {
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
    await collection.updateOne(
      { account_number: from },
      {
        $inc: {
          balance: -amount,
        },
        $push: {
          account_changes: {
            change_number: 1,
            amount: -amount,
            changed_date: new Date(),
            remark: remark,
          },
        },
      }
    );
    await collection.updateOne(
      { account_number: to },
      {
        $inc: {
          balance: amount,
        },
        $push: {
          account_changes: {
            change_number: 2,
            amount: amount,
            changed_date: new Date(),
            remark: remark,
          },
        },
      }
    );
  } catch (err) {
    console.log(err);
  } finally {
    await client.close();
  }
}
