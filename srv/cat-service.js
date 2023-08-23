const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {

    const equip = await cds.connect.to('API_EQUIPMENT');
    const equipHier = await cds.connect.to('API_EQUIP_HIER');

    this.on('READ', 'EquipmentAPI', async req => {
        console.log("EquipmetAPI:", req.query)
        return equip.run(req.query);
    });
    this.on('READ', 'EquipmentHierAPI', async req => {
        console.log("EquipmentHierAPI:", req.query)
        return equipHier.run(req.query);
    });

});