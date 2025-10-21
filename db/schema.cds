namespace RiskManagement;

using { BusinessPartnerA2X } from '../srv/external/BusinessPartnerA2X.cds';

entity Risks
{
    key ID : UUID;
    title : String(100);
    prio : String(5);
    description : String(100);
    impact : Integer;
    criticality : String(100);
    mitigation : Association to one Mitigations;
    a_BusinessPartner : Association to one BusinessPartnerA2X.A_BusinessPartner;
}

entity Mitigations
{
    key ID : UUID;
    description : String(100);
    owner : String(100);
    timeline : String(100);
    risks : Association to many Risks on risks.mitigation = $self;
}
