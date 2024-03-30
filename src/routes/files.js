const {
	SuccessModel,
	ErrorModel
} = require('../model/responseModel');

const {
	getProList,
	getDetails,
	updateDetails,
	getImageUrl
} = require('../controller/products');

const http = require('http');
const fs = require('fs');
const path = require('path');

const staticDir = 'D:/程序/vue_demo1_server';

const handleProRoute = (req, res) => {
	const method = req.method;
	const id = req.query.id;
	const ProData = req.body;

	if (req.path === '/api/files/getImage') {

		const filename = req.query.filename || '';

		const filePath = path.join(staticDir, filename);
		console.log("filePath:" + filePath);

		// 检查文件是否存在
		fs.access(filePath, fs.constants.F_OK, (err) => {
			console.log("err:" + err);
			if (err) {
				// 文件不存在，返回404错误
				console.log("文件不存在");
				const error = new ErrorModel(err);
				console.log("error:" + JSON.stringify(error));
				return new ErrorModel(err);
			}

			fs.stat(filePath, (err, stats) => {
				if (err) {
					// 错误处理
					console.log("出错了");
					const error = new ErrorModel(err);
					console.log("error:" + JSON.stringify(error));
					return new ErrorModel(err);
				}

				if (!stats.isDirectory()) {
					// const fileExtension = path.extname(filePath).toLowerCase();
					// const mimeTypes = {
					// 	'.html': 'text/html',
					// 	'.js': 'text/javascript',
					// 	'.css': 'text/css',
					// 	'.png': 'image/png',
					// 	'.jpg': 'image/jpg',
					// 	'.gif': 'image/gif',
					// 	// 其他MIME类型...
					// };
					// const readStream = fs.createReadStream(filePath);
					// readStream.pipe(res);

					var stream = fs.createReadStream(filePath);
					var responseData = []; //存储文件流
					if (stream) { //判断状态
						stream.on('data', function(chunk) {
							responseData.push(chunk);
						});
						stream.on('end', function() {
							// res.setHeader('Content-Type', 'image/jpg');
							var finalData = Buffer.concat(responseData);
							// console.log("finalData:" + JSON.stringify(finalData));
							res.write(finalData);
							res.end();
						});
					}
				}

			})

		})

	}
}

module.exports = handleProRoute;