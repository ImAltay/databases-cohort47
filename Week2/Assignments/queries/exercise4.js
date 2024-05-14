import mysql from 'mysql2';
import 'dotenv/config';

const connection = mysql.createConnection({
  host: 'localhost',
  user: process.env.user,
  password: process.env.password,
  database: process.env.database,
});

connection.connect();

// 3.4.1 All research papers and the number of authors that wrote that paper.
connection.query(
  'SELECT paper_title, count(authors.author_name) FROM research_papers JOIN junction_author_paper ON research_papers.paper_id = junction_author_paper.paper_id JOIN authors ON junction_author_paper.author_id = authors.author_id GROUP BY paper_title;  ',
  function (error, results) {
    if (error) throw error;
    console.log(
      'All research papers and the number of authors that wrote that paper: \n',
      results
    );
  }
);

// 3.4.2 Sum of the research papers published by all female authors.
connection.query(
  'SELECT COUNT(paper_title) AS sum_female_publishers FROM research_papers JOIN junction_author_paper ON research_papers.paper_id = junction_author_paper.paper_id JOIN authors ON junction_author_paper.author_id = authors.author_id WHERE authors.gender ="F";',
  function (error, results) {
    if (error) throw error;
    console.log(
      'Sum of the research papers published by all female authors: \n',
      results
    );
  }
);

// 3.4.3 Average of the h-index of all authors per university.
connection.query(
  'SELECT AVG(h_index), university FROM authors group by university;',
  function (error, results) {
    if (error) throw error;
    console.log(
      'Average of the h-index of all authors per university: \n',
      results
    );
  }
);

// 3.4.4 Sum of the research papers of the authors per university.
connection.query(
  'SELECT authors.university, COUNT(research_papers.paper_title) FROM authors JOIN junction_author_paper ON authors.author_id = junction_author_paper.author_id JOIN research_papers ON research_papers.paper_id = junction_author_paper.paper_id GROUP BY authors.university;',
  function (error, results) {
    if (error) throw error;
    console.log(
      'Sum of the research papers of the authors per university: \n',
      results
    );
  }
);

// 3.4.5 Minimum and maximum of the h-index of all authors per university.
connection.query(
  'SELECT MIN(h_index), MAX(h_index), university FROM authors group by university;',
  function (error, results) {
    if (error) throw error;
    console.log(
      'Minimum and maximum of the h-index of all authors per university: \n',
      results
    );
  }
);

connection.end();
