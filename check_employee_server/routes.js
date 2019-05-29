const express = require('express')
const router = express.Router()

import CheckRoute from './check.route'

router.use('/check', CheckRoute)

module.exports = router