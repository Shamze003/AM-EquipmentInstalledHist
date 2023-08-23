/* checksum : f3fb54925564ea30e280063a07b450d9 */
@cds.external : true
@Aggregation.ApplySupported : {
  Transformations: [ 'aggregate', 'groupby', 'filter' ],
  Rollup: #None
}
@Common.ApplyMultiUnitBehaviorForSortingAndFiltering : true
@Capabilities.FilterFunctions : [
  'eq',
  'ne',
  'gt',
  'ge',
  'lt',
  'le',
  'and',
  'or',
  'contains',
  'startswith',
  'endswith',
  'any',
  'all'
]
service API_EQUIP_HIER {};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Equipment Structure List'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.FilterRestrictions.Filterable : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: HierarchyNode,
    AllowedExpressions: 'SearchExpression'
  },
  {
    Property: HierarchyParentNode,
    AllowedExpressions: 'SearchExpression'
  }
]
@Capabilities.SortRestrictions.NonSortableProperties : [ 'HierarchyNode', 'HierarchyParentNode' ]
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity API_EQUIP_HIER.EquipmentStructureList {
  @Common.IsUpperCase : true
  @Common.Label : 'Equipment'
  @Common.QuickInfo : 'Equipment Number'
  key Equipment : String(18) not null;
  @Common.Label : 'Valid To'
  @Common.Heading : 'to'
  @Common.QuickInfo : 'Valid To Date'
  key ValidityEndDate : Date not null;
  @Common.Label : 'Valid From'
  @Common.QuickInfo : 'Valid-From Date'
  ValidityStartDate : Date;
  @Common.Label : 'Object Description'
  @Common.Heading : 'Description of technical object'
  @Common.QuickInfo : 'Description of technical object'
  EquipmentName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Equipment category'
  @Common.Heading : 'C'
  EquipmentCategory : String(1) not null;
  @Common.Label : 'Equipment CatDesc.'
  @Common.Heading : 'Equipment category description'
  @Common.QuickInfo : 'Equipment category description'
  EquipmentCategoryDesc : String(30) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Object Type'
  @Common.Heading : 'ObjectType'
  @Common.QuickInfo : 'Type of Technical Object'
  TechnicalObjectType : String(10) not null;
  @Common.Label : 'Object type text'
  @Common.QuickInfo : 'Text for Object Type'
  TechnicalObjectTypeDesc : String(20) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Superord. Equipment'
  @Common.Heading : 'Superord.Equipment'
  @Common.QuickInfo : 'Superordinate Equipment'
  SuperordinateEquipment : String(18) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Position'
  @Common.Heading : 'Pos.'
  @Common.QuickInfo : 'Equipment position at InstallLoc (Superior Equip./FunctLoc)'
  EquipInstallationPositionNmbr : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Construction Type'
  @Common.QuickInfo : 'Construction type material of the object'
  ConstructionMaterial : String(18) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Functional location'
  FunctionalLocation : String(30) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Checkbox'
  EquipmentIsAtCustomer : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Checkbox'
  EquipmentIsAvailable : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Checkbox'
  EquipmentIsInWarehouse : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Checkbox'
  EquipmentIsAssignedToDelivery : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Checkbox'
  EquipmentIsMarkedForDeletion : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Checkbox'
  EquipmentIsInstalled : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Checkbox'
  EquipIsAllocToSuperiorEquip : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Checkbox'
  EquipmentIsInactive : Boolean not null;
  TechObjHierarchyLevel : Integer not null;
  HierarchyNode : String(1333) not null;
  HierarchyParentNode : String(1333) not null;
};

