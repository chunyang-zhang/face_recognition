const express = require('express');
const router = express.Router();

import CheckController from './check.controller';
// Controller
const checkController = new CheckController();

router.post('/',  checkController.checkEmployee);

module.exports = router;