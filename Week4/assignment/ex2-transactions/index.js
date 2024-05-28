import { MongoClient, ServerApiVersion } from 'mongodb';
import dotenv from 'dotenv';
dotenv.config();
import { setup } from './setup.js';
import { transfer } from './transfer.js';

async function main() {
  await setup();
  await transfer(101, 102, 1000, '101 sent 1000 to 102');
}

main();
