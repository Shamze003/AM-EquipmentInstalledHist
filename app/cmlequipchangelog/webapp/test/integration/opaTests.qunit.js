sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/chevron/dcore/diaa/cmlequipchangelog/test/integration/FirstJourney',
		'com/chevron/dcore/diaa/cmlequipchangelog/test/integration/pages/EquipmentHierarchyList',
		'com/chevron/dcore/diaa/cmlequipchangelog/test/integration/pages/EquipmentHierarchyObjectPage'
    ],
    function(JourneyRunner, opaJourney, EquipmentHierarchyList, EquipmentHierarchyObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/chevron/dcore/diaa/cmlequipchangelog') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEquipmentHierarchyList: EquipmentHierarchyList,
					onTheEquipmentHierarchyObjectPage: EquipmentHierarchyObjectPage
                }
            },
            opaJourney.run
        );
    }
);