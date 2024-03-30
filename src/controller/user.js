const {
	exexSQL
} = require('../db/mysql')

const login = (userData) => {
	
	console.log("controller-userData:", userData);
	
	const username = userData.username;
	const pwd = userData.pwd;
	
	console.log("usename:" + username);
	console.log("pwd:" + pwd);
	
	let sql = ` select id, username from user where username='${username}' and pwd='${pwd}' `;
	
	return exexSQL(sql).then(rows => {
		console.log('rows:', rows);
		return rows[0];
	})
}

const register = (userData = {}) => {
	
	const username = userData.username;
	const pwd = userData.pwd;
	
	const sql = `INSERT INTO user(username, pwd) VALUES ('${username}', '${pwd}')`;
	
	return exexSQL(sql).then(insertedResult => {
		return{
			id: insertedResult.insertId
		}
	})
}

const findUserName = (username) => {
	
	const sql = `select * from user where username = '${username}'`;
	
	return exexSQL(sql).then(rows => {
		console.log('rows:', rows);
		return rows[0];
	})
}

module.exports = {
	login,
	register,
	findUserName
}