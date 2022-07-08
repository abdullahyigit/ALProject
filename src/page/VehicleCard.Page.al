page 50400 "Vehicle Card"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Vehicle Table";
    Caption = 'Vehicle Card';
    Editable = true;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    ApplicationArea = all;
                    Editable = true;
                }
                field("Description"; Description)
                {
                    ApplicationArea = all;
                    Editable = true;
                }
                field("Search"; Search)
                {
                    ApplicationArea = all;
                    Editable = true;
                }
                field("VechileGroupCode"; VechileGroupCode)
                {
                    ApplicationArea = all;
                    Editable = true;
                }
                field("Stock"; Stock)
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("NetChange"; NetChange)
                {
                    ApplicationArea = all;

                    Editable = false;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            /*action("Resource Card")
            {
                Caption = 'Resource';
                ToolTip = 'Open the Resource Card.';
                RunObject = Page "Customer Card";
                RunPageLink = "No." = field("Instructor Code");
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

            }*//*
            action("Add Vehicle")
            {
                Caption = 'Add cehicle';

                ToolTip = 'Open the Vecihle Card';

                RunObject = Page "Vehicle Card";

                RunPageLink = "No." = field("No.");

                Image = Relationship;

                Promoted = true;

                PromotedCategory = Process;

                ApplicationArea = All;
            }*/
        }
    }
}