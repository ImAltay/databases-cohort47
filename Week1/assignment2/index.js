import mysql from 'mysql';
import 'dotenv/config';

const connection = mysql.createConnection({
  host: 'localhost',
  user: process.env.user,
  password: process.env.password,
  database: 'world',
});

connection.connect();

connection.query(
  ' select name from country WHERE population > 8000000',
  function (error, results) {
    if (error) throw error;

    results.forEach((element) => {
      console.log(element.name);
    });
  }
);

connection.end();
