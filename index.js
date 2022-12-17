const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");

//middleware
app.use(cors());
app.use(express.json());

//ROUTES

//GET landing_page


app.listen(5500, () => {
    console.log("O servidor iniciou na porta 5500");
});
