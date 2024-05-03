// The exercise doesn't specify how to view the answers, so I just went with console.logs

import mysql from 'mysql';
import 'dotenv/config';

const connection = mysql.createConnection({
  host: 'localhost',
  user: process.env.user,
  password: process.env.password,
  database: 'world',
});

connection.connect();

//What are the names of countries with population greater than 8 million?
connection.query(
  ' select name from country WHERE population > 8000000',
  function (error, results) {
    if (error) throw error;
    console.log('------------------QUESTION 1------------------');
    console.log(results);
  }
);
// What are the names of countries that have “land” in their names?
connection.query(
  'SELECT name FROM country WHERE name LIKE "%land%" ',
  function (error, results) {
    if (error) throw error;
    console.log('------------------QUESTION 2------------------');
    console.log(results);
  }
);
//What are the names of the cities with population in between 500,000 and 1 million?
connection.query(
  'SELECT name FROM city WHERE population > 500000 AND population < 1000000; ',
  function (error, results) {
    if (error) throw error;

    console.log('------------------QUESTION 3------------------');
    console.log(results);
  }
);

//What's the name of all the countries on the continent ‘Europe’?
connection.query(
  'SELECT name FROM country WHERE continent = "Europe" ',
  function (error, results) {
    if (error) throw error;
    console.log('------------------QUESTION 4------------------');
    console.log(results);
  }
);
// List all the countries in the descending order of their surface areas.
connection.query(
  'SELECT * FROM country ORDER BY SurfaceArea DESC;',
  function (error, results) {
    if (error) throw error;
    console.log('------------------QUESTION 5------------------');
    console.log(results);
  }
);
// What are the names of all the cities in the Netherlands?
connection.query(
  'SELECT name FROM city WHERE CountryCode in (SELECT Code FROM country WHERE name LIKE "Netherlands");',
  function (error, results) {
    if (error) throw error;
    console.log('------------------QUESTION 6------------------');
    console.log(results);
  }
);

//What is the population of Rotterdam?
connection.query(
  'SELECT population FROM city WHERE Name = "Rotterdam"',
  function (error, results) {
    if (error) throw error;
    console.log('------------------QUESTION 7------------------');
    console.log(results);
  }
);
// What's the top 10 countries by Surface Area?
connection.query(
  'SELECT * FROM country ORDER BY SurfaceArea DESC LIMIT 10',
  function (error, results) {
    if (error) throw error;
    console.log('------------------QUESTION 8------------------');
    console.log(results);
  }
);

// What's the top 10 most populated cities?
connection.query(
  'SELECT * FROM city ORDER BY population DESC LIMIT 10',
  function (error, results) {
    if (error) throw error;
    console.log('------------------QUESTION 9------------------');
    console.log(results); // Those population values seem wrong to me :)
  }
);

// What is the population number of the world?
connection.query(
  'SELECT SUM(population) FROM country ',
  function (error, results) {
    if (error) throw error;
    console.log('------------------QUESTION 10------------------');
    console.log(results);
  }
);

connection.end();
