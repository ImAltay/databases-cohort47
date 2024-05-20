var mysql = require('mysql');
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'hyfuser',
  password: 'hyfpassword',
  database: 'hyfw3',
});

connection.connect();

connection.query('', (err, result) => {
  if (err) throw err;
  console.log('transaction complete!');
});

connection.end();
