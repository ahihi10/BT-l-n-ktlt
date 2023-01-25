
let mysql = require('mysql');
let db = mysql.createConnection({
   host:'localhost' ,
   user:'root',
   
   database:'test'
});
db.connect((err) => {
    if (err)
        throw err;
    console.log("Connected!");
    db.end();
});

