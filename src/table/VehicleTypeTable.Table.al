table 50202 "Vehicle Type Table"
{
    DataClassification = CustomerContent;
    DrillDownPageId = "Vehicle Type List";
    LookupPageId = "Vehicle Type List";

    fields
    {
        field(1; "No."; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(2; "Description"; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }
}