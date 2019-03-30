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

<<<<<<< HEAD
=======
app.get("/home",(req,res)=>{
    res.render("home.ejs",{user:{}});
})
>>>>>>> b51c4b0c8047c86f71e030a4bc54a15e9034ac79

app.get("/home",(req,res)=>{
	res.render("home.ejs");
})


app.listen(port,()=>{
    console.log(port+" is listening...");
})