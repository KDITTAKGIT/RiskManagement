using RiskManagementService as service from '../../srv/service';
annotate service.Risks with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'prio',
                Value : prio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impact',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'criticality',
                Value : criticality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'a_BusinessPartner_BusinessPartner',
                Value : a_BusinessPartner_BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Value : mitigation_ID,
                Label : 'mitigation_ID',
            },
            {
                $Type : 'UI.DataField',
                Value : mitigation.risks.criticality,
                Label : 'criticality',
            },
            {
                $Type : 'UI.DataField',
                Value : mitigation.risks.description,
                Label : 'description',
            },
            {
                $Type : 'UI.DataField',
                Value : mitigation.risks.ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : mitigation.risks.impact,
                Label : 'impact',
            },
            {
                $Type : 'UI.DataField',
                Value : a_BusinessPartner.BusinessPartnerIsBlocked,
                Label : 'BusinessPartnerIsBlocked',
            },
            {
                $Type : 'UI.DataField',
                Value : a_BusinessPartner.BusinessPartnerFullName,
                Label : 'BusinessPartnerFullName',
            },
            {
                $Type : 'UI.DataField',
                Value : a_BusinessPartner.BusinessPartner,
                Label : 'BusinessPartner',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
);

annotate service.Risks with {
    mitigation @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Mitigations',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : mitigation_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'description',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'owner',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'timeline',
            },
        ],
    }
};

annotate service.Risks with {
    a_BusinessPartner @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'A_BusinessPartner',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : a_BusinessPartner_BusinessPartner,
                ValueListProperty : 'BusinessPartner',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Customer',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Supplier',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'BusinessPartnerCategory',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'BusinessPartnerFullName',
            },
        ],
    }
};

