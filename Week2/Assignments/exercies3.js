import mysql from 'mysql';
import 'dotenv/config';

const connection = mysql.createConnection({
  host: 'localhost',
  user: process.env.user,
  password: process.env.password,
});

connection.connect();

connection.query('SELECT * FROM authors', function (error, results, fields) {
  if (error) throw error;
  console.log('Names of all authors and their corresponding mentors');
});

connection.end();
