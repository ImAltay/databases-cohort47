import mysql from 'mysql';
import 'dotenv/config';

const connection = mysql.createConnection({
  host: 'localhost',
  user: process.env.user,
  password: process.env.password,
});

connection.connect();

connection.query(
  'CREATE TABLE junction_author_paper (author_id INT , paper_id INT, PRIMARY KEY(author_id, paper_id), FOREIGN KEY(author_id) REFERENCES authors(author_id), FOREIGN KEY(paper_id) REFERENCES research_papers(paper_id));',
  function (error, results, fields) {
    if (error) throw error;
    console.log('Junction table has been created');
  }
);

connection.end();
