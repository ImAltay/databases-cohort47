var mysql = require('mysql');
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'hyfuser',
  password: 'hyfpassword',
  database: 'hyfw3',
});

connection.connect();

connection.query(
  'CREATE TABLE IF NOT EXISTS account(account_number integer UNIQUE , balance integer NOT NULL, PRIMARY KEY (account_number)) ',
  function (error, results) {
    if (error) throw error;
    console.log('account table has been created');
  }
);

connection.query(
  'CREATE TABLE IF NOT EXISTS account_changes(change_number INTEGER UNIQUE , account_number INTEGER NOT NULL, amount INTEGER NOT NULL, changed_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, remark VARCHAR(255), PRIMARY KEY (change_number), FOREIGN KEY(`account_number`) REFERENCES account(`account_number`)) ',
  function (error, results) {
    if (error) throw error;
    console.log('account_changes table has been created');
  }
);

connection.end();
