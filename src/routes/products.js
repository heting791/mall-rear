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

const fs = require('fs');

const handleProRoute = (req, res) => {
	const method = req.method;
	const id = req.query.id;
	const ProData = req.body;

	if (method === 'GET' && req.path === '/api/products/list') {

		const keyword = req.query.keyword || '';
		const category = req.query.category || '';
		const listDataPromise = getProList(keyword, category);

		return listDataPromise.then((listData) => {
			return new SuccessModel(listData);
		})

	}

	if (method === 'GET' && req.path === '/api/products/details') {

		const DetailsDataPromise = getDetails(id);

		return DetailsDataPromise.then((detailsData) => {
			if (detailsData) {
				return new SuccessModel(detailsData);
			}
			return new ErrorModel(detailsData);
		})

	}

	if (req.path === '/api/products/update') {

		const favUserList = req.query.favUserList || '';
		console.log("id:" + id);
		console.log("favUserList:" + favUserList);

		const updateDataPromise = updateDetails(id, favUserList);

		return updateDataPromise.then(updateAddressData => {
			if (updateAddressData) {
				return new SuccessModel(updateAddressData);
			}
			return new ErrorModel(updateAddressData);
		})
	}
	
	if (req.path === '/api/products/getImage') {
		
		const idList = req.query.idList;
		const getImagePromise = getImageUrl(idList);
		
		return getImagePromise.then((getImageData) => {
			let objList = [];
			console.log("getImageData:" + JSON.stringify(getImageData));
			for(var i = 0; i < getImageData.length; i++) {
				const imagePath = "D:\\程序\\vue_demo1_server\\" + getImageData[i].image;
				// imagePath.concat(getImageData[i].image);
				console.log("iamgePath:" + imagePath);
				const buffer = fs.readFileSync(imagePath);
				const base64Str = buffer.toString('base64');
				const obj = {
					id: getImageData[i].id,
					message: base64Str
				}
				objList.push(obj);
			}
			
			return new SuccessModel(objList);
		})
		
	}
}

module.exports = handleProRoute;