const express = require('express');
const mysql = require("mysql");
const db = require("../database");
const app = express.Router();
app.post("/signup",async function(req,res){
    let {email,password,fullname,usertype} = req.body;
    if(!usertype){
        usertype="costumer";
    }
    var query = mysql.format("insert into user(username,password,fullname,usertype) values(?,?,?,?)",[email,password,fullname,usertype]);
    await db.query(query,async function(err,result){
        if(err)
        {
            console.log("Error: "+err);
        }else{
            if(result){
                var query = mysql.format("select * from user where userid=?",[result.insertId]);
                await db.query(query,(err,result)=>{
                    if(result[0]){
                        user = result[0];
                    }else{
                        console.log(err);
                    }
                })
            }
        }
    })
    return res.redirect("/");
})


app.post("/signin",async function(req,res){
    const {username,password} = req.body;
    var query = mysql.format("select * from user where username=?",[username]);
    await db.query(query,(err,result)=>{
        if(err){
            console.log(err);
        }else{
            if(result[0]){
                if(password === result[0].password){
                    user = result[0];
                }else{
                    console.log("password is wrong");
                }
            }
        }
    })
    return res.redirect("/");
})

app.get("/logout",(req,res)=>{
    user={};
    res.redirect("/");
})

module.exports = app;