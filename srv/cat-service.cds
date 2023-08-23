// using equipments as equi from '../db/data-model';
using {API_EQUIPMENT as api} from './external/API_EQUIPMENT';
using {API_EQUIP_HIER as apiHier} from './external/API_EQUIP_HIER';

service HierarchyService { 
    // entity EquipmentHierarchy @readonly as projection on api. {
    //     *
    // };

    entity EquipmentAPI @readonly as projection on api.Equipment {
        *
    };
    entity EquipmentHierAPI @readonly as projection on apiHier.EquipmentStructureList {
        *
    };

    // @readonly
    // entity EquipmentAPI @(restrict: [{
    //     grant: 'READ',
    //     to   : ['display']
    // }]) as projection on api.Equipment {
    //     Key Equipment,
    //     EquipmentCategory,
    //     EquipmentIsInstalled,
    //     MaintObjectFreeDefinedAttrib,
    //     FunctionalLocation,
    //     TechnicalObjectType
    // } 
    // where EquipmentCategory = '5'

}

