table 50202 "Vehicle Type Table"
{
    DataClassification = CustomerContent;
    DrillDownPageId = "Vehicle Types";
    LookupPageId = "Vehicle Types";

    fields
    {
        field(1; "Code"; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Code';
        }
        field(2; "Description"; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }
}