let mysql = require('mysql');
let con = mysql.createConnection({
    host: "localhost",
    user: "root",
    database: "test"
});
con.connect(function(err) {
    if(err) throw err;
    console.log('create');
con.query("SELECT * FROM `admin`", function(err, result) {
        if(err) throw err;
            console.log(result);
        });
        con.end();
    });