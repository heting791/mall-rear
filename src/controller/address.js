const {
	exexSQL
} = require('../db/mysql')

const getAddList = (userid) => {
	
	let sql = `select * from address where userid = '${userid}'`;
	
	return exexSQL(sql).then(rows => {
		return rows;
	})
	
	// return exexSQL(sql).then(rows => {
	// 	console.log("rows:" + rows);
	// 	let sql1 = `select * from user`;
	// 	return exexSQL(sql1).then(rows1 => {
	// 		console.log("rows1:" + rows1);
	// 		return rows1;
	// 	})
	// })
}

const goEdit = (id) => {
	
	let sql = `select * from address where id = '${id}'`;
	
	return exexSQL(sql).then(rows => {
		return rows[0];
	})
}

const addressUpdate = (id, userid, addressEditUpdate) => {
	
	const area = addressEditUpdate.area;
	const name = addressEditUpdate.name;
	const deatailad = addressEditUpdate.deatailad;
	const phoneprefix = addressEditUpdate.phoneprefix;
	const phone = addressEditUpdate.phone;
	const tag = addressEditUpdate.tag;
	const defaultad = addressEditUpdate.defaultad;
	
	if (defaultad == 1) {
		let sql1 = `update address set defaultad = 0 where userid = '${userid}'`;
		let rows = exexSQL(sql1);
		console.log("rows:" + rows);
	}
	
	if(id){
		
		let sql = `update address set area = '${area}', name = '${name}', deatailad = '${deatailad}', phoneprefix = '${phoneprefix}', phone = '${phone}', tag = '${tag}', defaultad = '${defaultad}' where id = '${id}'`;
		
		return exexSQL(sql).then(updateResult => {
			console.log("updateResult:", updateResult);
			return updateResult.changedRows;
		})
	} else {
		
		let sql = `INSERT INTO address(userid, area, name, deatailad, phoneprefix, phone, tag, defaultad) VALUES ('${userid}', '${area}', '${name}', '${deatailad}', '${phoneprefix}', '${phone}', '${tag}', '${defaultad}')`;
		return exexSQL(sql).then(insertedResult => {
			return insertedResult.insertId;
		})
	}
}

const deleteAddress = (id) => {
	
	let sql = `delete from address where id = '${id}'`;
	
	return exexSQL(sql).then(deleteResult => {
		console.log("deleteResult:", deleteResult);
		return deleteResult;
	})
}

module.exports = {
	getAddList,
	goEdit,
	addressUpdate,
	deleteAddress
}