const express = require("express");
const db = require("../database");
const mysql = require("mysql");
const app = express.Router();

app.get("/",(req,res)=>{
    res.render("retailer.ejs");
})

module.exports = app;