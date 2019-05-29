require("babel-polyfill")
require("babel-register")

// patch console to adding timestamp
require("console-stamp")(console)

require('./main.js');