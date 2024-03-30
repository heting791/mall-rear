var mysql = require('mysql');
const {
	MYSQL_CONFIG
} = require('../config/db')

var connection = mysql.createConnection(MYSQL_CONFIG);

connection.connect();

// connection.on('error', err => {
// 	console.log("err:", err);
// 	console.log("Re-connecting...");
// 	connection = mysql.createConnection(MYSQL_CONFIG);
// })

setInterval(function () {
  connection.query('SELECT 1');
}, 30000);

// var  sql = 'SELECT * FROM blogs';
// connection.query(sql,function (err, result) {
//         if(err){
//           console.log('[SELECT ERROR] - ',err.message);
//           return;
//         }

//        console.log('--------------------------SELECT----------------------------');
//        console.log(result);
//        console.log('------------------------------------------------------------\n\n');  
// });

// function exexSQL(sql,callback){
// 	connection.query(sql,callback);
// }

function exexSQL(sql) {
	const promise = new Promise((resolve, reject) => {
		connection.query(sql, (err, result) => {
			if (err) {
				reject(err);
				return;
			}
			resolve(result);
		})
	})
	return promise;
}

// for (var i = 2; i <= 71; i++) {
// 	var sql = `INSERT INTO products(image,category) VALUES ('static/uploads/products/20230905/pro`;
// 	sql += (i + `.jpg','充电器')`);
// 	console.log("i:" + i + ",sql:" + sql);
// 	exexSQL(sql);
// }

// var result = new Array();
// console.log("result:", result);

// for(var i = 2; i <= 71; i++){

// 	// 颜色;内存;套餐类型
// 	// 静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息
// 	var sql = `UPDATE products SET argsassemblyvalue = "星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg" where id = `;
// 	sql += i;
// 	console.log("i:" + i + ",sql:" + sql);
// 	exexSQL(sql);
// }

// for (var i = 32; i <= 41; i++) {

// 	// 颜色;内存;套餐类型
// 	// 静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息
// 	var sql =
// 		`UPDATE products SET argsvalue="98英寸,85英寸,75英寸,65英寸,55英寸;旗舰爆款新品,2023高亮量子点爆款,144Hz真高刷电视,高色域巨幕游戏电视;白色,黑色" where id = `;
// 	sql += i;
// 	console.log("i:" + i + ",sql:" + sql);
// 	exexSQL(sql);
// }

module.exports = {
	exexSQL
}