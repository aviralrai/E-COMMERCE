const express = require("express");
const db = require("../database");
const app = express.Router();

app.get('/',(req,res)=>{
    var query = 'select * from items i inner join orders o on o.itemid = i.itemid and o.status = "pending" and i.sellerid = '+user.userid;
    db.query(query,(err,result)=>{
        if(err){
            console.log(err);
        }else{
            res.render("neworders.ejs",{data: result});
        }
    })

})

module.exports = app;