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
console.log('-------------------------------------');
connection.query(
  'SELECT name FROM country WHERE name LIKE "%land%" ',
  function (error, results) {
    if (error) throw error;

    results.forEach((element) => {
      console.log(element.name);
    });
  }
);
console.log('-------------------------------------');

//SELECT name FROM city WHERE population > 500000 AND population < 1000000;

//SELECT name FROM country WHERE continent = "Europe";

// 5)
connection.end();
