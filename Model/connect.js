const mysql = require('mysql');

/**
 * connexion mysql
 */
const connexion = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'site_cv'
});

connexion.connect(err=>{
    if(err) throw err;
    console.log("connexion base reussi");
});

module.exports = connexion;