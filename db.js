const Pool = require("pg").Pool;

const pool = new Pool({
    user: "eokrlvyj",
    password: "QOan984gvgYwYHIpn5zL8kKqcb3WV2zA",
    host: "mouse.db.elephantsql.com",
    port: "5432",
    database: "eokrlvyj"
});

module.exports = pool;