const express = require("express");
const db = require("../database");
const mysql = require("mysql");
const app = express.Router();

app.post("/",async function(req,res){
    const {searchItem} = req.body;
    let query = mysql.format("select * from items where category=?",[searchItem]);
    await db.query(query,async function(err,result){
        if(result){
            return res.render("search.ejs",{data: result});
        }else{
            console.log(err);
            res.redirect("/home");
        } 
    })
})

module.exports = app;