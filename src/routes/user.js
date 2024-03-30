const {
	SuccessModel,
	ErrorModel
} = require("../model/responseModel");

const {
	login,
	register,
	findUserName
} = require('../controller/user');

const handleUserRoute = (req, res) =>{
	const method = req.method;
	const id = req.query.id;
	const userData = req.body;
	
	if (req.path === '/api/user/login'){
		
		console.log("route-userData:", userData);
		console.log("route-username:", userData.username);
		
		const username = userData.username || '';
		const pwd = userData.pwd || '';		
		const loginDataPromise = login(userData);
		
		return loginDataPromise.then((userData) => {
			console.log('userData:',userData);
			if(userData){
				return new SuccessModel(userData);
			}
			return new ErrorModel(userData);
		})
		
	}
	
	if (req.path === '/api/user/register'){
		
		const newUserDataPromise = register(userData);
		
		return newUserDataPromise.then(newUserData => {
			if(newUserData){
				return new SuccessModel(newUserData);
			}
			return new ErrorModel(newUserData);
		})
	}
	
	if (method === 'GET' && req.path === '/api/user/find'){
		const username = req.query.username;
		const findDataPromise = findUserName(username);
		
		return findDataPromise.then((result) => {
			if(result) {
				return new ErrorModel(result);
			}
			return new SuccessModel(result);
		})
	}
	
}

module.exports = handleUserRoute;