// using equipments as equi from '../db/data-model';
using {API_EQUIPMENT as api} from './external/API_EQUIPMENT';
// using {API_EQUIPMENT as api} from './external/API_EQUIPMENThierarcHY';

service HierarchyService { 
    // entity EquipmentHierarchy @readonly as projection on api. {
    //     *
    // };

    // entity EquipmentAPI @readonly as projection on equi.EquipmentAPI {
    //     *
    // };

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

