const {
	exexSQL
} = require('../db/mysql');

const getFavList = (userid) => {
	
	let sql = `select products.id as id, products.image, products.title, products.category, products.oprice, products.price, products.favuser from favorites left join products on favorites.productid=products.id where favorites.userid='${userid}'`;
	
	return exexSQL(sql);
}

const deleteFav = (userid, productid) => {
	
	let sql = `delete from favorites where userid = '${userid}' and productid='${productid}'`;
	
	return exexSQL(sql).then(deleteResult => {
		console.log("deleteResult:", deleteResult);
		return deleteResult;
	})
}

const addFav = (userid, productid) => {
	
	let sql = `insert into favorites(userid,productid) values('${userid}','${productid}') `;
	
	return exexSQL(sql).then(insertedResult => {
		return insertedResult.insertId;
	})
}

module.exports = {
	getFavList,
	deleteFav,
	addFav
}