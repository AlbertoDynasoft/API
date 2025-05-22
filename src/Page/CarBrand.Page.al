page 50301 "AMM API Car Brand"
{
    PageType = API;
    APIPublisher = 'apiAMM';
    APIGroup = 'groupAMM';
    APIVersion = 'v1.0';
    EntityCaption = 'Car Brand';
    EntitySetCaption = 'Car Brands';
    EntityName = 'carBrand';
    EntitySetName = 'carBrands';
    ODataKeyFields = SystemId;
    SourceTable = "AMM Car Brand";
    DelayedInsert = true;
    Extensible = false;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'Id';
                    Editable = false;
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(country;Rec.Country)
                {
                    Caption = 'Country';
                }
                field(brandid;Rec."Brand Id")
                {
                    Caption = 'Brand ID';
                }
                part(carModels; "AMM API Car Model")
                {
                    Caption = 'Car Models';
                    Multiplicity = ZeroOrOne;
                    EntityName = 'carModel';
                    EntitySetName = 'carModels';
                    SubPageLink = "Brand Id" = Field(SystemId);
                }
            }
        }
    }
}