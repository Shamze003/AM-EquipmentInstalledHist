using HierarchyService as service from '../../srv/cat-service';

annotate service.EquipmentHierarchy with @(
    UI.SelectionFields : [
        Equipment
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Equipment',
            Value : Equipment,
        },
        {
            $Type : 'UI.DataField',
            Label : 'hierarchyLevel',
            Value : hierarchyLevel,
        },
        {
            $Type : 'UI.DataField',
            Label : 'parentNodeID',
            Value : parentNodeID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'drillState',
            Value : drillState,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
    ]
);
annotate service.EquipmentHierarchy with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Equipment',
                Value : Equipment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'hierarchyLevel',
                Value : hierarchyLevel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'parentNodeID',
                Value : parentNodeID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'drillState',
                Value : drillState,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
