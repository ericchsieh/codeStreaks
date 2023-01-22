import express from "express"
import mysql from "mysql"


const app = express()
const db = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"ekqls7965_Bekqls7965_A",
    database:"codestreaks"
})

app.get("/", (req, res) => res.json("hello this is backend"))

app.get("/questions", (req, res) => {
    const q = "SELECT * FROM questions"
    db.query(q, (err, data) => {
        if(err) return res.json(err)
        return res.json(data)
    })
})


app.listen(8800, () => {
    console.log("Connected to backend!");
})