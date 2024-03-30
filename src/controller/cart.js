const {
	exexSQL
} = require('../db/mysql')

const getCartList = (userid) => {

	let sql =
		`select cart.id as cartid, products.id as productid, products.image, products.idnumber, products.title, products.argsvalue, products.price as defaultprice, products.argsassemblyvalue, cart.args, cart.price, cart.count, cart.ttprice from cart left join products on cart.productid=products.id where userid = '${userid}'`;

	return exexSQL(sql).then(rows => {
		return rows;
	})
}

const deleteCartItem = (id) => {

	let sql = `delete from cart where id = '${id}'`;

	return exexSQL(sql).then(deleteResult => {
		console.log("deleteResult:", deleteResult);
		return deleteResult;
	})
}

const updateCartItem = (id, args, price, count, ttprice, cartData) => {

	if (id) {
		let sql =
			`update cart set args = '${args}', price = '${price}', count = '${count}', ttprice = '${ttprice}' where id = '${id}'`;

		return exexSQL(sql).then(updateResult => {
			console.log("updateResult:", updateResult);
			return updateResult.changedRows;
		});
	} else {
		
		const userid = cartData.userid;
		const productid = cartData.productid;
		const args = cartData.args;
		const price = cartData.price;
		const count = cartData.count;
		const ttprice = cartData.ttprice;
		
		let sql = `INSERT INTO cart(userid, productid, args, price, count, ttprice) VALUES ('${userid}', '${productid}', '${args}', '${price}', '${count}', '${ttprice}')`;
		
		return exexSQL(sql).then(insertedResult => {
			return insertedResult.insertId;
		})
	}
}

module.exports = {
	getCartList,
	deleteCartItem,
	updateCartItem
}