import express from "express"
import mysql from "mysql"
import cors from "cors"

const app = express()
const db = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"a20780946",
    database:"codestreaks"
})

app.use(express.json())
app.use(cors())

app.get("/", (req, res) => res.json("hello this is backend"))

app.get("/questions", (req, res) => {
    const q = "SELECT * FROM questions"
    db.query(q, (err, data) => {
        if(err) return res.json(err)
        return res.json(data)
    })
})

app.post("/users", (req, res) => {
    const q = "INSERT INTO users ('email', 'pwd', 'nickname', 'status', 'preference', 'company') VALUES (?)"
    const values = [
        req.body.email,
        req.body.pwd,
        req.body.nickname,
        req.body.status,
        req.body.preference,
        req.body.company]

    db.query(q, [values], (err, data) => {
        if(err) return res.json(err)
        return res.json("User has been created successfully.")
    })
})


app.listen(8800, () => {
    console.log("Connected to backend!");
})