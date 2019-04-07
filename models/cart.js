const express = require("express");
const db = require("../database");
const app = express.Router();

app.get("/",(req,res)=>{
    var query = 'select * from items where itemid in (select itemid from cart where userid = '+user.userid+")";
    db.query(query,(error,result,fields)=>{
        if(error)
        {
            console.log("There is some error");
            throw error;
        }
        var sum = 0;
        result.forEach(element => {
            sum+=element.price;
        });
        return res.render("cart.ejs",{user: user,data:result,sum});
    })
})

app.get("/add/:id",(req,res)=>{
    var query = "insert into cart(userid,itemid) values ("+user.userid+","+req.params.id+")";
    db.query(query,(err,result)=>{
        console.log(result);
    })
    res.redirect('back');
})

app.get("/remove/:id",(req,res)=>{
    var query = "delete from  cart where itemid = "+req.params.id;
    db.query(query,(err,result)=>{
    })
    res.redirect('back');
})
module.exports = app;