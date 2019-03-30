const express = require("express");
const bodyParser = require("body-parser");
const app = express();
const port = process.env.port||3000;

app.use(express.static("staticFiles"));
app.use(bodyParser.urlencoded({extended:true}));

//importing other routes

const auth = require("./models/auth");
app.use("/user",auth);

app.get("/",(req,res)=>{
    res.render("form.ejs")
})

app.get("/home",(req,res)=>{
    res.send();
})


app.listen(port,()=>{
    console.log(port+" is listening...");
})