const express= require ("express");
const app = express();

app.get("/",(req,res)=>{
    res.send("hello world from git")
})

app.listen(3000);

module.exports = app;
