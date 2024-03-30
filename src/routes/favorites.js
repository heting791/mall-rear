const {
	SuccessModel,
	ErrorModel
} = require('../model/responseModel');

const {
	getFavList,
	deleteFav,
	addFav
} = require('../controller/favorites');

const handleFavRoute = (req, res) => {
	const method = req.method;
	const id = req.query.id;
	const userid = req.query.userid;
	const productid = req.query.productid;
	const favData = req.body;

	if (method === 'GET' && req.path === '/api/fav/list') {

		const listDataPromise = getFavList(userid);


		return listDataPromise.then((listData) => {
			return new SuccessModel(listData);
		})
	}

	if (method === 'GET' && req.path === '/api/fav/delete') {
		
		const deleteFavPromise = deleteFav(userid, productid);

		return deleteFavPromise.then(deleteData => {
			if (deleteData) {
				return new SuccessModel(deleteData);
			}
			return new ErrorModel(deleteData);
		})
	}

	if (req.path === '/api/fav/new') {
		const newFavDataPromise = addFav(userid, productid);

		return newFavDataPromise.then(newFavData => {
			if (newFavData) {
				return new SuccessModel(newFavData);
			}
			return new ErrorModel(newFavData);
		})
	}
}

module.exports = handleFavRoute;