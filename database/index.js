var mysql = require('mysql');
//database

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "password",
  database: "shiv",
});

con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
});

module.exports = con;
