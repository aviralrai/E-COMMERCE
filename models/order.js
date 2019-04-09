const express = require("express");
const db = require("../database");
const app = express.Router();

app.get('/',(req,res)=>{
    var query = 'select * from items i inner join orders o on o.userid = '+user.userid+' and o.itemid = i.itemid';
    db.query(query,(err,result)=>{
        if(err){
            console.log(err);
        }else{
            res.render("myorders.ejs",{data: result});
        }
    })
})


app.get("/place",(req,res)=>{
    var query = 'select * from items where itemid in (select itemid from cart where userid = '+user.userid+")";
    db.query(query,(error,result)=>{
        if(error)
        {
            console.log("There is some error");
            throw error;
        }
        result.forEach(element => {
            var query = `insert into orders (userid,itemid,status) values('${user.userid}','${element.itemid}',"pending")`;
            db.query(query,(err,result)=>{});
        });
        return res.redirect("/order");
    })
    var query = `delete from cart where userid = '${user.userid}'`;
    db.query(query,(err,result)=>{
        if(err){
            console.log(err);
        }else{
        }
    })
})

module.exports = app;