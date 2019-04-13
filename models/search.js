const express = require("express");
const db = require("../database");
const app = express.Router();

app.post("/",(req,res)=>{
    const {searchItem} = req.body;
    let query = "select * from items where category like '%"+searchItem+"%'";
    db.query(query,async function(err,result){
        if(result){
            let error = "";
            if(result.length === 0){
                error = "No Items Available";
            }
            res.render("search.ejs",{data: result,error: error});
        }else{
            console.log(err);
            res.redirect("/");
        } 
    })
})

module.exports = app;