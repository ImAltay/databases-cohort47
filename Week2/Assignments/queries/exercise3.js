import mysql from 'mysql2';
import 'dotenv/config';

const connection = mysql.createConnection({
  host: 'localhost',
  user: process.env.user,
  password: process.env.password,
  database: process.env.database,
});

connection.connect();

//Write a query that prints names of all authors and their corresponding mentors.
connection.query(
  ' SELECT a.author_name AS author, m.author_name AS mentor FROM authors a LEFT JOIN authors m ON a.mentor_id = m.author_id;',
  function (error, results) {
    if (error) throw error;
    console.log(
      'Names of all authors and their corresponding mentors \n',
      results
    );
  }
);

// Write a query that prints all columns of authors and their published paper_title.
connection.query(
  'SELECT author_name, research_papers.paper_title FROM authors LEFT JOIN junction_author_paper ON authors.author_id = junction_author_paper.author_id LEFT JOIN research_papers ON junction_author_paper.paper_id = research_papers.paper_id',
  function (error, results) {
    if (error) throw error;
    console.log('all authors and their paper titles \n', results);
  }
);

connection.end();
