const express = require('express');
const router = express.Router();

const ctrlContenu = require('../Controller/ContenuController');

router.get('/', ctrlContenu.commun);
router.get('/generique/', ctrlContenu.generique)
module.exports = router;