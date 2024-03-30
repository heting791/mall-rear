const { json } = require('express/lib/response');
const {
	exexSQL
} = require('../db/mysql')

const getProList = (keyword, category) => {
	
	let sql = `select id, title, oprice, price, image, category, brand, favuser from products where 1=1 `;
	
	if(keyword){
		sql += `and title like '%${keyword}%' `;
	}
	
	if(category){
		sql += `and category = '${category}' `;
	}
	
	return exexSQL(sql);
	
}

const getDetails = (id) => {
	
	let sql = `select * from products left join category on category.name=products.category where products.id = `;
	sql += id;
	
	return exexSQL(sql).then(rows => {
		return rows[0];
	});
}

const updateDetails = (id, favUserList) => {
	
	let sql = `update products set favuser='${favUserList}' where id='${id}'`;
	console.log("sql:" + sql);
	
	return exexSQL(sql).then(updateResult => {
		console.log("updateResult:", updateResult);
		return updateResult.changedRows;
	})
}

const getImageUrl = (idList) => {
	// let jsonList = JSON.parse(idList);
	let jsonList = idList;
	console.log("jsonList:" + jsonList);
	let sql = `select id, image from products where id in (` + jsonList + `)`;
	console.log("sql:" + sql);
	return exexSQL(sql).then(rows => {
		console.log("rows:" + JSON.stringify(rows));
		return rows;
	})
}

module.exports = {
	getProList,
	getDetails,
	updateDetails,
	getImageUrl
}