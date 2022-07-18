table 60000 "Vehicle Table"
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
        field(3; "Description 2"; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Description 2';
        }
        field(4; "Search Description"; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Search Description';
        }
        field(5; "Vehicle Group Code"; Text[20])
        {
            Caption = 'Vechile Group Code';
            TableRelation = "Vehicle Type Table";
        }
        field(6; "Inventory"; Decimal)
        {
            Caption = 'Inventory';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Sum("Vehicle Ledger Entry Table".Amount
            WHERE("No." = Field("No.")
            ));
        }
        field(7; "Net Change"; Decimal)
        {
            Caption = 'Net Change';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Sum("Vehicle Ledger Entry Table".Amount
            WHERE("No." = Field("No."),
            "Posting Date" = Field("Date Filter")
            ));

        }
        field(8; "Purchase Amount"; Decimal)
        {
            Caption = 'Purchase Amount';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Sum("Vehicle Ledger Entry Table".Amount
            WHERE("No." = Field("No."),
            "Entry Type" = const(Purchase)
            ));
        }
        field(9; "Date Filter"; Date)
        {
            Editable = false;
            FieldClass = FlowFilter;

        }
        field(10; "Image"; Media)
        {
            DataClassification = CustomerContent;
        }
    }



    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(Brick; "Vehicle Group Code", "No.", "Inventory", Image)
        {
        }
        fieldgroup(DropDown; "No.", "Vehicle Group Code", Inventory)
        {
        }
    }
}