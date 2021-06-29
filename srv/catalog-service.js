const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	const { BillOfMaterial } = this.entities;
	const service = await cds.connect.to('bom');
	this.on('READ', BillOfMaterial, request => {
		return service.tx(request).run(request.query);
	});
});