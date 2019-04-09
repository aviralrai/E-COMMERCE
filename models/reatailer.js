const express = require("express");
const db = require("../database");
const mysql = require("mysql");
const app = express.Router();

app.get("/",(req,res)=>{
    res.render("retailer.ejs");
})

app.post("/",(req,res)=>{
    let {itemname,details,link,price,category} = req.body;
    price = Number(price);
    const query = mysql.format("insert into items(itemname,seller,details,link,price,category,sellerid) values (?,?,?,?,?,?,?)",[itemname,user.username,details,link,price,category,user.userid]);
    db.query(query,(err,result)=>{
        if(err)
            console.log(err);
        else 
            console.log(result);
    })
    res.redirect("/home");
})

module.exports = app;