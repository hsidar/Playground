var http = require('http');
var fs = require('fs');
var strftime = require('strftime');
var server = http.createServer(function (req, resp) {
console.log("poop");
});
server.listen(process.argv[2]);