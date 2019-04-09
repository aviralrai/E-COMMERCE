const express = require("express");
const db = require("../database");
const app = express.Router();

app.get('/',(req,res)=>{
    var query = 'select * from items i inner join orders o on o.sellerid = '+user.userid+' and o.itemid = i.itemid';
    db.query(query,(err,result)=>{
        if(err){
            console.log(err);
        }else{
            res.render("neworder.ejs",{data: result});
        }
    })

})

module.exports = app;