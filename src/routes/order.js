const {
	SuccessModel,
	ErrorModel
} = require('../model/responseModel');

const {
	getOrderList,
	getOrderDetails,
	newOrder,
	deleteOrder
} = require('../controller/order');

const handleOrderRoute = (req, res) =>{
	
	const method = req.method;
	const userid = req.query.userid
	const id = req.query.id;
	const orderData = req.body;
	const status = req.query.status;
	
	if (method === 'GET' && req.path === '/api/order/list') {
		
		const listDataPromise = getOrderList(userid, status);
		
		return listDataPromise.then((listData) => {
			if(listData){
				return new SuccessModel(listData);
			}
			return new ErrorModel(listData);
		})
	}
	
	if (method === 'GET' && req.path === '/api/order/details') {
		
		const detailsDataPromise = getOrderDetails(id);
		
		return detailsDataPromise.then((detailsData) => {
			if(detailsData){
				return new SuccessModel(detailsData);
			}
			return new ErrorModel(detailsData);
		})
	}
	
	if (req.path === '/api/order/update') {
		
		const addressid = req.body.addressid;
		const delivery = req.body.delivery;
		const remark = req.body.remark;
		
		const updateDataPromise = newOrder(id,orderData,status,addressid,delivery,remark);
		
		return updateDataPromise.then(updatesData => {
			if (updatesData){
				return new SuccessModel(updatesData);
			}
			return new ErrorModel(updatesData);
		})
	}
	
	if (method === 'POST' && req.path === '/api/order/new') {
		
		const newOrderDataPromise = newOrder(id,orderData,status,'','','');
		
		return newOrderDataPromise.then(insertedData => {
			if(insertedData){
				return new SuccessModel(insertedData);
			}
			return new ErrorModel(insertedData);
		})
	}
	
	if (method === 'GET' && req.path === '/api/order/delete') {
		
		const deleteOrderPromise = deleteOrder(id);
		
		return deleteOrderPromise.then(deleteData => {
			if(deleteData){
				return new SuccessModel(deleteData);
			}
			return new ErrorModel(deleteData);
		})
	}
	
}

module.exports = handleOrderRoute;