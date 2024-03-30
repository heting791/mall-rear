const {
	exexSQL
} = require('../db/mysql')

const getOrderList = (userid, status) => {

	let sql =
		`SELECT orders.id, orders.createtime, orders.orderid, orders.price, orders.count, orders.ttprice, orders.status, products.image, products.title, address.name FROM orders LEFT JOIN user ON orders.userid= user.id LEFT JOIN products ON orders.productid=products.id LEFT JOIN address ON orders.addressid=address.id WHERE user.id='${userid}'`;
		
	if (status) {
		sql += ` and orders.status='${status}'`;
	}

	return exexSQL(sql);

}

const getOrderDetails = (id) => {

	let sql =
		`SELECT orders.id, orders.createtime, orders.orderid, orders.price, orders.count, orders.ttprice, orders.status, orders.args, orders.addressid, orders.delivery, orders.remark, products.image, products.title, address.name, address.area, address.deatailad, address.phoneprefix, address.phone FROM orders LEFT JOIN user ON orders.userid= user.id LEFT JOIN products ON orders.productid=products.id LEFT JOIN address ON orders.addressid=address.id WHERE orders.id='${id}'`;

	return exexSQL(sql);
}

const newOrder = (id, orderData, status, addressid, delivery, remark) => {


	if (id && !status) {
		
		let sql =
			`UPDATE orders SET addressid='${addressid}',delivery='${delivery}',remark='${remark}' WHERE id='${id}'`;

		return exexSQL(sql).then(updateResult => {
			console.log("updateResult:", updateResult);
			return updateResult.changedRows;
		})
	} else if (id) {
		
		console.log("else-id");

		let sql =
			`UPDATE orders SET status='${status}' WHERE id='${id}'`;

		return exexSQL(sql).then(updateResult => {
			console.log("updateResult:", updateResult);
			return updateResult.changedRows;
		})
	} else {
		
		console.log("orderData1:",orderData);
		
		const orderid = orderData.orderid;
		const userid = orderData.userid;
		const productid = orderData.productid;
		const addressid = orderData.addressid;
		const args = orderData.args;
		const price = orderData.price;
		const count = orderData.count;
		const ttprice = orderData.ttprice;
		const delivery = orderData.delivery;
		const remark = orderData.remark;
		const createtime = Date.now();

		let sql =
			`INSERT INTO orders(orderid, userid, productid, addressid, args, price, count, ttprice, delivery, remark, createtime, status) VALUES ('${orderid}','${userid}','${productid}','${addressid}','${args}','${price}','${count}','${ttprice}','${delivery}','${remark}','${createtime}',0)`;

		return exexSQL(sql).then(insertedResult => {
			console.log('insertedResult', insertedResult);
			return {
				id: insertedResult.insertId
			}
		})
	}

}

const deleteOrder = (id => {

	let sql = `delete from orders where id = '${id}'`;

	return exexSQL(sql).then(deleteResult => {
		console.log("deleteResult:", deleteResult);
		return deleteResult;
	})
})

module.exports = {
	getOrderList,
	getOrderDetails,
	newOrder,
	deleteOrder
}