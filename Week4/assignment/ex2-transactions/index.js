import { MongoClient, ServerApiVersion } from 'mongodb';
import dotenv from 'dotenv';
dotenv.config();
import { setup } from './setup.js';
import { transfer } from './transfer.js';

async function main() {
  await setup();
  await transfer(101, 102, 1000, '101 sent 1000 to 102');
  await transfer(102, 103, 500, '102 sent 500 to 103');
  await transfer(101, 102, 2000, '101 sent 2000 to 102');
}

main();
