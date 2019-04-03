const express = require("express");
const db = require("../database");
const mysql = require("mysql");
const app = express.Router();

app.post("/",async function(req,res){
    const {itemName} = req.body;
    let query = mysql.format("select * from items where category=?",[itemName]);
    await db.query(query,async function(err,result){
        if(result){
            return res.render("search.ejs",{data: result});
        }
        console.log(err);
    })
    console.log("Hello");
    res.redirect("/home");
})

module.exports = app;