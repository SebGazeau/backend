const express = require('express');
const router = express.Router();

const ctrlContenu = require('../Controller/ContenuController');

router.get('/', ctrlContenu.commun);

module.exports = router;