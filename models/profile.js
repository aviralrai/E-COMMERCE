const express = require("express");
const db = require("../database");
const mysql = require("mysql");
const app = express.Router();

app.get("/",(req,res)=>{
    return res.render("profile.ejs",{user:user});
})

app.post("/update",async function(req,res){
    let name = req.body.fullname||req.body.password||req.body.username||req.body.address;
    var body0 = {
        name : Object.keys(req.body)[0],
        value: name,
        error: " ",
        flag: 0,
    }
    if(Object.keys(req.body).length > 1){
        if(req.body.password !== req.body.password1){
            body0.error = "Make sure both the password are same";
            body0.flag = 1;
        }
    }

    if(body0.flag === 0){
        switch(body0.name){
            case 'username':
                var query = mysql.format("update user set username=? where username=?",[body0.value,user.username]);
                await db.query(query,async function(err,result){
                    if(!result){
                        console.log(err);
                    }
                })
                break;
            case 'password':
                var query = mysql.format("update user set password=? where username=?",[body0.value,user.username]);
                await db.query(query,async function(err,result){
                    if(!result){
                        console.log(err);
                    }
                })
                break;
            case 'fullname':
                var query = mysql.format("update user set fullname=? where username=?",[body0.value,user.username]);
                await db.query(query,async function(err,result){
                    if(!result){
                        console.log(err);
                    }
                })
                break;
            case 'addresss':
                var query = mysql.format("update user set address=? where username=?",[body0.value,user.username]);
                await db.query(query,async function(err,result){
                    if(!result){
                        console.log(err);
                    }
                })
        }

        var query = mysql.format("select * from user where userid=?",[user.userid]);
        await db.query(query,(err,result)=>{
            if(!err){
                user = result[0];
            }else{
                console.log(err);
                body0.error = "Something went wrong";
            }
        })
    }
    return res.redirect("/profile");
})

module.exports = app;