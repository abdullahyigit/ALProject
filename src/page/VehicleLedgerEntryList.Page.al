page 60101 "Vehicle Ledger Entry List"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "Vehicle Ledger Entry Table";
    Editable = true;
    Caption = 'Vehicle Ledger Entries';

    AboutTitle = 'About vehicle ledger entries';
    AboutText = 'Here you overview all entered vehicle ledger entries';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; "No.")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the vehicle''s no.';
                }
                field("Posting Date"; "Posting Date")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the date when the posting of the sales document will be recorded.';

                }
                field("Document Date"; "Document Date")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the date when the related document was created.';
                }
                field("Entry Type"; "Entry Type")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies whether the process type is a sale or a purchase';
                }
                field("Document No."; "Document No.")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the document no.';
                }
                field("External Document No."; "External Document No.")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies a document number that refers to the customer''s or vendor''s numbering system.';
                }
                field("Source Type"; "Source Type")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the source type.';
                }
                field("Source No."; "Source No.")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the source no.';
                }
                field("Description"; "Description")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the description.';
                }
                field("Amount"; Amount)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the amount of sale/purchase process.';
                }
                field("Positive"; Positive)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies whether the entered amount is positive or not. This value is generated automatically when user entered an amount.';
                }
                field("No. Series"; "No. Series")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the number series.';
                }
                field("Document Line No."; "Document Line No.")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the document line no.';
                }
                field("Vehicle Description"; "Vehicle Description")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies a vehicle description for the entry.';
                }
                field(EntryNo; EntryNo)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the number of an entry. This number is generated automatically when user selects a vehicle.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

            }
        }
    }
}