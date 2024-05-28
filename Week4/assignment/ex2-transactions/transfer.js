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

    const db = client.db('databaseWeek4');
    const collection = db.collection('accounts');

    // from account
    let lastChangeNumberForFrom = 0;
    const fromAccount = await collection
      .aggregate([
        { $match: { account_number: from } },
        { $project: { account_changes: 1 } },
        { $unwind: '$account_changes' },
        { $sort: { 'account_changes.change_number': -1 } },
        { $limit: 1 },
      ])
      .toArray();

    if (
      fromAccount.length > 0 &&
      fromAccount[0].account_changes.change_number
    ) {
      lastChangeNumberForFrom = fromAccount[0].account_changes.change_number;
    }

    await collection.updateOne(
      { account_number: from },
      {
        $inc: {
          balance: -amount,
        },
        $push: {
          account_changes: {
            change_number: lastChangeNumberForFrom + 1,
            amount: -amount,
            changed_date: new Date(),
            remark: remark,
          },
        },
      }
    );

    // to account
    let lastChangeNumberForTo = 0;
    const toAccount = await collection
      .aggregate([
        { $match: { account_number: to } },
        { $project: { account_changes: 1 } },
        { $unwind: '$account_changes' },
        { $sort: { 'account_changes.change_number': -1 } },
        { $limit: 1 },
      ])
      .toArray();
    if (toAccount.length > 0 && toAccount[0].account_changes.change_number) {
      const lastChangeNumberForTo = toAccount[0].account_changes.change_number;
    }

    await collection.updateOne(
      { account_number: to },
      {
        $inc: {
          balance: amount,
        },
        $push: {
          account_changes: {
            change_number: lastChangeNumberForTo + 1,
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
