const {
	resolve
} = require('dns');
const queryString = require('querystring');
const path = require('path');

const handleProRoute = require('./src/routes/products');
const handleUserRoute = require('./src/routes/user');
const handleAddressRoute = require('./src/routes/address');
const handleOrderRoute = require('./src/routes/order');
const handleFavRoute = require('./src/routes/favorites');
const handleCartRoute = require('./src/routes/cart');
const handleCateRoute = require('./src/routes/category');
const handleFilesRoute = require('./src/routes/files');
const {
	json
} = require('body-parser');
const {
	query
} = require('express');


const getPostData = (req) => {
	const promise = new Promise((resolve, reject) => {
		if (req.method !== 'POST') {
			resolve({});
			return;
		}
		console.log("headers:" + req.headers['content-type']);
		// if (req.headers['content-type'] !== 'application/json') {
		// 	resolve({});
		// 	return;
		// }

		let postData = "";

		if (req.headers['content-type'] !== 'application/json') {
			console.log("if");
			req.on('data', (chunk) => {
				postData += chunk.toString();
			});

			req.on('end', () => {
				console.log("end-postData:" + postData);
				if (!postData) {
					resolve({});
					return;
				}
				resolve(
					queryString.parse(postData)
					// postData
				);
			})
		} else {
			console.log("else");
			req.on('data', (chunk) => {
				postData += chunk.toString();
			});

			req.on('end', () => {
				console.log("end-postData:" + postData);
				if (!postData) {
					resolve({});
					return;
				}
				resolve(
					JSON.parse(postData)
					// postData
				);
			})
		}
	})
	return promise;
}


const serverHandler = (req, res) => {
	if (req.url.split('?')[0] != '/api/files/getImage') {
		res.setHeader('Content-Type', 'application/json');
		console.log("not getImage");
	} 
	else {
		const url = req.url;
		query1 = queryString.parse(url.split('?')[1]);
		const staticDir = '/';
		const filename = query1.filename || '';
		const filePath = path.join(staticDir, filename);
	
		const fileExtension = path.extname(filePath).toLowerCase();
		const mimeTypes = {
			'.html': 'text/html',
			'.js': 'text/javascript',
			'.css': 'text/css',
			'.png': 'image/png',
			'.jpg': 'image/jpg',
			'.gif': 'image/gif',
			// 其他MIME类型...
		};
	
		const contentType = mimeTypes[fileExtension] || 'application/octet-stream';
		console.log("content-Type:" + JSON.stringify(contentType));
		res.setHeader('Content-Type', contentType);
		console.log("getImage");
	}
	res.setHeader("Access-Control-Allow-Origin", '*');
	res.setHeader("Access-Control-Allow-Headers", "*");
	res.setHeader("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
	res.setHeader("Access-Control-Allow-Credentials", true);
	console.log("method:", req.method);
	if (req.method == 'OPTIONS') {
		return;
	}
	const url = req.url;
	req.path = url.split('?')[0];

	// const responseData = {
	// 	name: 'zhangsan',
	// 	age: 20
	// }

	// res.end(
	// JSON.stringify(responseData)
	// );

	req.query = queryString.parse(url.split('?')[1]);

	getPostData(req).then((postData) => {
		console.log("postData:", postData);
		req.body = postData;
		console.log("req.body:" + JSON.stringify(req.body));
		const proDataPromise = handleProRoute(req, res);
		const userDataPromise = handleUserRoute(req, res);
		const addressDataPromise = handleAddressRoute(req, res);
		const orderDataPromise = handleOrderRoute(req, res);
		const favDataPromise = handleFavRoute(req, res);
		const cartDataPromise = handleCartRoute(req, res);
		const cateDataPromise = handleCateRoute(req, res);
		const filesDataPromise = handleFilesRoute(req, res);

		if (proDataPromise) {
			proDataPromise.then((proData) => {
				res.end(
					JSON.stringify(proData)
				);
			})

			return;
		}

		if (userDataPromise) {
			console.log("userDataPromise");
			userDataPromise.then((userData) => {
				res.end(
					JSON.stringify(userData)
				);
			})

			return;
		}

		if (addressDataPromise) {
			addressDataPromise.then((addressData) => {
				res.end(
					JSON.stringify(addressData)
				);
			})

			return;
		}

		if (orderDataPromise) {
			orderDataPromise.then((orderData) => {
				res.end(
					JSON.stringify(orderData)
				);
			})

			return;
		}

		if (favDataPromise) {
			favDataPromise.then((favData) => {
				res.end(
					JSON.stringify(favData)
				);
			})

			return;
		}

		if (cartDataPromise) {
			cartDataPromise.then((cartData) => {
				res.end(
					JSON.stringify(cartData)
				);
			})

			return;
		}

		if (cateDataPromise) {
			cateDataPromise.then((cateData) => {
				res.end(
					JSON.stringify(cateData)
				);
			})

			return;
		}

		if (filesDataPromise) {
			filesDataPromise.then((filesData) => {
				res.end(
					JSON.stringify(filesData)
				)
			})

			return;
		}

		res.writeHead(404, {
			'Content-Type': 'text/plain'
		});
		res.write('404 Not Found');
		res.end();
	})

}

module.exports = serverHandler;