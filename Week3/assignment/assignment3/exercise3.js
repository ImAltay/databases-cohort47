// QUESTION 1
//Give an example of a value that can be passed as name and code that would take advantage of SQL-injection and (    fetch all the records in the database)

// ANSWER 1
// for example instead of name you can pass 
`Netherlands OR 1=1`
// which will always return true so you will get the population information for every row.

// Alternatively  you can just input a second query (unless multiple queries are turned off)
// instead of name:
`Netherlands; SELECT * FROM country;`


// Bonus
SELECT population FROM country WHERE name = 0;
// Will also return lines where name does not start with a number! This is due to how comparing numbers to strings work.

// ---------------------------QUESTION 2 ---------------------------

// Rewrite the function so that it is no longer vulnerable to SQL injection

// ANSWER 2
// In order to avoid SQL Injection attacks, you should always escape any user provided data before using it inside a SQL query. You can do so using the mysql.escape(), 
// Alternatively, you can use ? characters as placeholders for values you would like to have escaped like this:

// SOURCE: https://www.npmjs.com/package/mysql#:~:text=)%3B-,Escaping%20query%20values,-Caution%20These%20methods


// new function
function getPopulation(Country, name, code, cb) {
    name = name.toString()
    code = code.toString()
    conn.query(
      `SELECT Population FROM ?? WHERE Name = ? and code = ?`,
      [Country, name, code],
      function (err, result) {
        if (err) cb(err);
        if (result.length == 0) cb(new Error("Not found"));
        cb(null, result[0].name);
      }
    );
  }