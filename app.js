const express = require("express");

const app = express();
const port = process.env.port||3000;


app.use(express.json());
app.use(express.static("staticFiles"));

app.get("/",(req,res)=>{
    res.render("form.ejs");
})

app.get("/home",(req,res)=>{
	res.render("home.ejs");
})


app.listen(port,()=>{
    console.log(port+" is listening...");
})