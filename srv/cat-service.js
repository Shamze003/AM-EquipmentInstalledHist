const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {

    const equip = await cds.connect.to('API_EQUIPMENT');

    this.on('READ', 'EquipmentAPI', async req => {
        console.log("EquipmetAPI:", req.query)
        return equip.run(req.query);
    });

});