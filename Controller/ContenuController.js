const connexion = require('../Model/connect');

// GET
exports.commun = (req, res) => {
    
    connexion.query(
        `SELECT contenu FROM ${langText} WHERE page = '/'`,
        (err, result) => {
            if(err) throw err;
            res.setHeader('Content-Type', 'application/json');
            res.status(200);
            res.send(JSON.stringify(result[0].contenu));
        }
    );
}
exports.generique = (req, res) => {
    let langText = req.headers.langue;
    let table = `generique_${langText}`;
    let bloc = `g${langText}_bloc`;
    let contenu = `g${langText}_contenu`;
    connexion.query(
        `SELECT ${bloc}, ${contenu} FROM ${table}`,
        (err, result) => {
            if(err) throw err;
            res.setHeader('Content-Type', 'application/json');
            res.status(200);
            res.send(JSON.stringify(result));
        }
    )
}