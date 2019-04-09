const express = require("express");
const db = require("../database");
const app = express.Router();

app.get('/',(req,res)=>{
    var query = 'select * from items i inner join orders o on o.itemid = i.itemid and o.status = "pending" and i.sellerid = '+user.userid+" inner join user u on o.userid = u.userid";
    db.query(query,(err,result)=>{
        if(err){
            console.log(err);
        }else{
            console.log(result);
            res.render("neworders.ejs",{data: result});
        }
    })
})

app.get("/ship/:id",(req,res)=>{
    var query = `update orders set status='Shipped' where orderid = ${req.params.id}`;
    db.query(query,(err,result)=>{
    })
    res.redirect('/neworder');
})

module.exports = app;