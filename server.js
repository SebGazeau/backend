const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();
const routes = require('./Routes/routes');

app.use(cors());
app.use(bodyParser.json());

app.get('/contenu/', (req, res, next) => {
    if(req.headers.authorization === 'token'){
        next()
    }else{
        res.status(403).send('utilisateur non autorisé !')
    }
});


app.use('/contenu/', routes);


app.listen(8080, '127.0.0.1', () => {
    console.log(`Serveur démarré à ${new Date().toLocaleTimeString('fr-FR')}`)
});
