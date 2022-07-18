page 60200 "Vehicle Card"
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
                    ToolTip = 'Specifies the vehicle''s no';
                    NotBlank = true;
                    ShowMandatory = true;
                }
                field("Description"; Description)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies a description of a vehicle.';
                }
                field("Description 2"; "Description 2")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies a second description of a vehicle.';
                    Visible = false;
                }
                field("Search Description"; "Search Description")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies text to search for when you do not know the number of the vehicle.';
                }
                field("Vechile Group Code"; "Vehicle Group Code")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the vehicle''s type';
                }
                field("Inventory"; Inventory)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies how many vehicles are in inventory.';
                }
                field("Net Change"; "Net Change")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the net change in the inventory during the time period in the Date Filter field.';
                }
                field("Purchase Amount"; "Purchase Amount")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the vehicle''s total amount of purchase process';
                }
            }
        }
    }

}