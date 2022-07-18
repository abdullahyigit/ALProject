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
        field(3; "Search"; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Search';
        }
        field(4; "Vehicle Group Code"; Text[20])
        {
            Caption = 'Vechile Group Code';
            TableRelation = "Vehicle Type Table";
        }
        field(5; "Stock"; Decimal)
        {
            Caption = 'Stock';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Sum("Vehicle Ledger Entry Table".Amount
            WHERE("No." = Field("No.")
            ));
        }
        field(6; "Net Change"; Decimal)
        {
            Caption = 'Net Change';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Sum("Vehicle Ledger Entry Table".Amount
            WHERE("No." = Field("No."),
            "Posting Date" = Field("Posting Date Filter")
            ));

        }
        field(7; "Amount of Purchase"; Decimal)
        {
            Caption = 'Amount of Purchase';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Sum("Vehicle Ledger Entry Table".Amount
            WHERE("No." = Field("No."),
            "Entry Type" = const(Purchase)
            ));
        }
        field(8; "Posting Date Filter"; Date)
        {
            Editable = false;
            FieldClass = FlowFilter;

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