const express = require("express");
const bodyParser = require("body-parser");
const app = express();
const port = process.env.port||3000;
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


app.use(express.static("staticFiles"));
app.use(bodyParser.urlencoded({extended:true}));

app.get("/",(req,res)=>{
    res.render("form.ejs");
})

app.post("/",(req,res)=>{
    console.log(req.body);
})

app.get("/home",(req,res)=>{
    res.send("Hello World");
})


app.listen(port,()=>{
    console.log(port+" is listening...");
})