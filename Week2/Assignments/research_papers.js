import mysql from 'mysql';
import 'dotenv/config';

const connection = mysql.createConnection({
  host: 'localhost',
  user: process.env.user,
  password: process.env.password,
});

connection.connect();

connection.query(
  'CREATE TABLE research_Papers (paper_id INT AUTO_INCREMENT, paper_title VARCHAR(100), conference VARCHAR(100), publish_date DATE, PRIMARY KEY(author_id));',
  function (error, results, fields) {
    if (error) throw error;
    console.log('Authors table has been created');
  }
);

t;
