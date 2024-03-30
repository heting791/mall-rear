const {
	SuccessModel,
	ErrorModel
} = require('../model/responseModel');

const {
	getAddList,
	goEdit,
	addressUpdate,
	deleteAddress
} = require('../controller/address');


const handleAddressRoute = (req, res) => {

	const method = req.method;
	const id = req.query.id;
	const userid = req.query.userid;
	const addressEditData = req.body;

	if (method === 'GET' && req.path === '/api/address/list') {

		const listDataPromise = getAddList(userid);

		return listDataPromise.then((listData) => {
			if (listData) {
				return new SuccessModel(listData);
			}
			return new ErrorModel(listData);
		})

	}

	if (method === 'GET' && req.path === '/api/address/goEdit') {

		const detailsDataPromise = goEdit(id);

		return detailsDataPromise.then(detailsData => {
			if (detailsData) {
				return new SuccessModel(detailsData);
			}
			return new ErrorModel(detailsData);
		})
	}

	if (req.path === '/api/address/addressUpdate') {
		
		console.log("addressEditData:" + JSON.stringify(addressEditData));

		const updateDataPromise = addressUpdate(id, userid, addressEditData);

		return updateDataPromise.then(updateAddressData => {
			if (updateAddressData) {
				return new SuccessModel(updateAddressData);
			}
			return new ErrorModel(updateAddressData);
		})
	}

	if (req.path === '/api/address/newAddress') {
		
		const newAddressDataPromise = addressUpdate(id, userid, addressEditData);
		
		return newAddressDataPromise.then(newAddressData => {
			if (newAddressData) {
				return new SuccessModel(newAddressData);
			}
			return new ErrorModel(newAddressData);
		})
	}
	
	if (method === 'GET' && req.path === '/api/address/deleteAddress') {
		
		const deleteAddressPromise = deleteAddress(id);
		
		return deleteAddressPromise.then(deleteData => {
			if(deleteData) {
				return new SuccessModel(deleteData);
			}
			return new ErrorModel(deleteData);
		})
	}
}

module.exports = handleAddressRoute;