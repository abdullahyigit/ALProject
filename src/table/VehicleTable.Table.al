table 50200 "Vehicle Table"
{
    DataClassification = CustomerContent;
    DrillDownPageId = "Vehicle List";
    LookupPageId = "Vehicle List";

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
        field(3; "Search"; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Search';
        }
        field(4; "VechileGroupCode"; Enum "Vehicle Type")
        {
            DataClassification = CustomerContent;
            Caption = 'VechileGroupCode';
        }
        field(5; "Stock"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Stock';
            Editable = false;
        }
        field(6; "NetChange"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'NetChange';
            Editable = false;
        }

    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}