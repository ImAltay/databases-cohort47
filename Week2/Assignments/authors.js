import mysql from 'mysql';
import 'dotenv/config';

const connection = mysql.createConnection({
  host: 'localhost',
  user: process.env.user,
  password: process.env.password,
});

connection.connect();

connection.query(
  'CREATE TABLE authors (author_id INT AUTO_INCREMENT, author_name VARCHAR(100), university VARCHAR(100), date_of_birth DATE, h_index INT, gender VARCHAR(20), PRIMARY KEY(author_id));',
  function (error, results, fields) {
    if (error) throw error;
    console.log('Authors table has been created');
  }
);

connection.query(
  `ALTER TABLE authors ADD COLUMN mentor INT, ADD FOREIGN KEY (mentor) REFERENCES authors(author_id)`
);

connection.end();
