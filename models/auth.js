const express = require('express');
const mysql = require("mysql");
const db = require("../database");
const app = express.Router();
app.post("/signup",(req,res)=>{
    const {email,password,fullname} = req.body;
    var query = mysql.format("insert into user(username,password,fullname) values(?,?,?)",[email,password,fullname]);
    db.query(query,(err,result)=>{
        if(err)
            return res.redirect("/");
        else{
            return res.render("navbar.ejs",{user: req.body});
        }
    })
})


app.post("/signin",(req,res)=>{
    const {username,password} = req.body;
    var query = mysql.format("select * from user where username=?",[username]);
    db.query(query,(err,result,fields)=>{
        if(err){
            console.log(err);
            return res.redirect("/");
        }else{
            if(result[0]){
                if(password === result[0].password){
                    user = result[0];
                    return res.redirect("/home");
                }else{
                    return res.redirect("/");
                }
            }
            return res.redirect("/");
        }
    })
})

app.get("/logout",(req,res)=>{
    user={};
    res.redirect("/");
})

module.exports = app;