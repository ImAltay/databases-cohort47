var mysql = require('mysql');
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'hyfuser',
  password: 'hyfpassword',
  database: 'hyfw3',
});

async function transferMoney(fromAccountNumber, toAccountNumber, amount) {
  await connection.beginTransaction();
  await connection.query(
    `UPDATE account SET balance = balance - ${amount} WHERE account_number = ${fromAccountNumber}`
  );
  await connection.query(
    `UPDATE account SET balance = balance + ${amount} WHERE account_number = ${toAccountNumber}`
  );
  await connection.query(
    `INSERT INTO account_changes(account_number, amount, remark) VALUES (${fromAccountNumber}, -${amount}, "${fromAccountNumber} sent ${amount}"),( ${toAccountNumber}, ${amount}, "${toAccountNumber} received ${amount}")`
  );

  await connection.commit();

  console.log(
    `transaction complete! ${fromAccountNumber} sent ${amount} to ${toAccountNumber}`
  );
}

async function main() {
  connection.connect();
  await transferMoney(101, 102, 1000);
  connection.end();
}

main();
