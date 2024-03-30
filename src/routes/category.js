const {
	SuccessModel,
	ErrorModel
} = require('../model/responseModel');

const {
	getCateList
} = require('../controller/category')

const handleCateRoute = (req, res) => {
	const method = req.method;
	
	if (method === 'GET' && req.path === '/api/category/list') {
		const listDataPromise = getCateList();
		return listDataPromise.then((listData) => {
			return new SuccessModel(listData);
		})
	}
}

module.exports = handleCateRoute;