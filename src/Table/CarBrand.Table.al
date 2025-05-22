table 50300 "AMM Car Brand"
{
    DataClassification = CustomerContent;
    Caption = 'Car Brand';

    fields
    {
        field(1; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Country"; Text[100])
        {
            Caption = 'Country';
        }
        field(4; "Brand Id"; Guid)
        {
            Caption = 'Brand Id';
        }
    }

    keys
    {
        key(PK; Name)
        {
            Clustered = true;
        }
    }
}