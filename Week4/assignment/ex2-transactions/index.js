import { MongoClient, ServerApiVersion } from 'mongodb';
import dotenv from 'dotenv';
dotenv.config();
import { setup } from './setup.js';

async function main() {
  await setup();
}

main();
