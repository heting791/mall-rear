const http = require('http');
const https = require('https');
const fs = require('fs');

const serverHandler = require('../app');

const PORT1 = 8888;
const PORT2 = 3030;

var privateKey  = fs.readFileSync('./privatekey.pem', 'utf8'); //密钥路径,编码
var certificate = fs.readFileSync('./certificate.crt', 'utf8');
var credentials = {key: privateKey, cert: certificate};

// const path = require('path');
// const imagePath = path.join(__dirname, 'public/images/image.jpg');
// console.log(imagePath);

const server = http.createServer(serverHandler);
const httpsServer = https.createServer(credentials, serverHandler);

var express = require('express');
var app = express();

var bodyParser = require('body-parser');
var multer = require('multer');
const { json } = require('express/lib/response');


app.use('/public', express.static('public'));
app.use(bodyParser.urlencoded({
	extended: false
}));


app.use(multer({
	dest: 'tmp/'
}).array('image'));

server.listen(PORT1,() => {
	console.log('server running at port 8888...');
})

httpsServer.listen(PORT2, () => {
	console.log('https server running at 3030...');
})