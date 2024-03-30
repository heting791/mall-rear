const {
	SuccessModel,
	ErrorModel
} = require('../model/responseModel');

const {
	getCartList,
	deleteCartItem,
	updateCartItem
} = require('../controller/cart');

const handleCartRoute = (req, res) => {

	const method = req.method;
	const id = req.query.id;
	const userid = req.query.userid;
	const cartData = req.body;

	if (method === 'GET' && req.path === '/api/cart/list') {

		const listDataPromise = getCartList(userid);

		return listDataPromise.then((listData) => {
			if (listData) {
				return new SuccessModel(listData);
			}
			return new ErrorModel(listData);
		})

	}

	if (method === 'GET' && req.path === '/api/cart/delete') {

		const deleteCartPromise = deleteCartItem(id);

		return deleteCartPromise.then(deleteData => {
			if (deleteData) {
				return new SuccessModel(deleteData);
			}
			return new ErrorModel(deleteData);
		})
	}

	if (req.path === '/api/cart/update') {

		const args = cartData.args || '';
		const price = cartData.price || '';
		const count = cartData.count || '';
		const ttprice = cartData.ttprice || '';

		const updateDataPromise = updateCartItem(id, args, price, count, ttprice, cartData);

		return updateDataPromise.then(updateAddressData => {
			if (updateAddressData) {
				return new SuccessModel(updateAddressData);
			}
			return new ErrorModel(updateAddressData);
		})
	}

	if (req.path === '/api/cart/new') {

		const newCartDataPromise = updateCartItem('', '', '', '', '', cartData);

		return newCartDataPromise.then(newCartData => {
			if (newCartData) {
				return new SuccessModel(newCartData);
			}
			return new ErrorModel(newCartData);
		})
	}
}

module.exports = handleCartRoute;