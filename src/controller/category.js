const {
	exexSQL
} = require('../db/mysql')

const getCateList = () => {
	let sql = `select id, name from category `;
	return exexSQL(sql);
}

module.exports = {
	getCateList
}