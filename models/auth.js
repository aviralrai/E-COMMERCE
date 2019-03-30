const express = require('express');
const mysql = require("mysql");
const db = require("../database");
const app = express.Router();

app.post("/signup",(req,res)=>{
    const {email,password,fullname} = req.body;
    console.log(req.body);
    var query = mysql.format("insert into user(username,password,fullname) values(?,?,?)",[email,password,fullname]);
    db.query(query,(err,result)=>{
        if(err)
        console.log(err);
        console.log(result);
    })
})

app.post("/signin",(req,res)=>{
    const {username,password} = req.body;
    console.log(req.body);
    var query = mysql.format("select * from user where username=?",[username]);
    db.query(query,(err,result,fields)=>{
        if(err){
            console.log(err);
            res.redirect("/");
        }else{
            if(password === result[0].password){
                res.send("Welcome "+result[0].fullname);
                console.log("signed int");
            }
        }
    })
})

module.exports = app;