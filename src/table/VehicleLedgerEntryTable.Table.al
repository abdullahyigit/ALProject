table 60001 "Vehicle Ledger Entry Table"
{
    DataClassification = CustomerContent;
    DrillDownPageId = "Vehicle Ledger Entry List";
    LookupPageId = "Vehicle Ledger Entry List";

    fields
    {
        field(1; "No."; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
            TableRelation = "Vehicle Table";
            trigger OnValidate()

            var
                CurrVehicle: Record "Vehicle Ledger Entry Table";
                CurrVehicleNo: Integer;
            begin
                repeat
                begin
                    CurrVehicle.Next();
                    EntryNo := CurrVehicle.EntryNo + 1;
                end until CurrVehicle.Next() = 0;
            end;
        }
        field(2; "Posting Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Posting Date';
        }
        field(3; "Document Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Document Date';
        }
        field(4; "Entry Type"; Enum "Entry Type")
        {
            DataClassification = CustomerContent;
            Caption = 'Entry Type';
        }
        field(5; "Document No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Document No.';
        }
        field(6; "External Document No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'External Document No.';
        }
        field(7; "Source Type"; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Source Type';
        }
        field(8; "Source No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Source No.';
        }
        field(9; "Description"; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(10; Amount; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Amount';

            trigger OnValidate()
            begin
                if Amount > 0 then
                    Positive := true
                else
                    Positive := false;
            end;
        }

        field(11; Positive; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Positive';
        }
        field(12; "Number Series"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Number Series';
        }
        field(13; "Document Line No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Document Line No.';
        }
        field(14; "Vehicle Description"; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Vehicle Description';
        }
        field(15; EntryNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Entry No.';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; EntryNo)
        {
            Clustered = true;
        }
        key(Key2; "No.")
        {
        }
    }
}