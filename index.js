const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");

//middleware
app.use(cors());
app.use(express.json());


//GET landing_page

app.get("/", async (req, res) => {
    try{
        const landing = await pool.query("SELECT * FROM landing_page WHERE id_landing_page = 1");
        res.json(landing.rows[0]);
    } catch {
        console.error(err.message);
    }
});


app.listen(5500, () => {
    console.log("O servidor iniciou na porta 5500");
});
