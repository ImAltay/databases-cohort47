var mysql = require('mysql');
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'hyfuser',
  password: 'hyfpassword',
  database: 'hyfw3',
});

connection.connect();

const accounts = [
  { account_number: 101, balance: 5000 },
  { account_number: 102, balance: 2000 },
  { account_number: 103, balance: 666 },
];

account_changes = [
  {
    change_number: 1,
    account_number: 103,
    amount: 500,
    remark: '103 received 500',
  },
  {
    change_number: 2,
    account_number: 102,
    amount: -500,
    remark: '102 sent 500',
  },
];

accounts.forEach((account) => {
  connection.query('INSERT INTO account SET ?', account, (error, results) => {
    if (error) throw error;
    console.log('values inserted to account');
  });
});

account_changes.forEach((account_change) => {
  connection.query(
    'INSERT INTO account_changes SET ?',
    account_change,
    (error, results) => {
      if (error) throw error;
      console.log('values inserted to account changes');
    }
  );
});

connection.end();
