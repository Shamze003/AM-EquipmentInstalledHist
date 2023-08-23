sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.chevron.dcore.diaa.cmlequipchangelog',
            componentId: 'EquipmentHierarchyList',
            entitySet: 'EquipmentHierarchy'
        },
        CustomPageDefinitions
    );
});