const express = require("express");
const db = require("../database");
const mysql = require("mysql");
const app = express.Router();

app.get("/",(req,res)=>{
    return res.render("profile.ejs",{user:user});
})

app.post("/update",async function(req,res){
    let {}
})

module.exports = app;