const connexion = require('../Model/connect');

// GET
exports.commun = (req, res) => {
    let langText = `text_${req.headers.langue}`;
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