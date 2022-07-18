page 60100 "Vehicles"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Vehicle Table";
    Editable = false;
    Caption = 'Vehicles';
    CardPageID = "Vehicle Card";

    AboutTitle = 'About vehicles';
    AboutText = 'Here you overview all entered vehicles';

    layout
    {
        area(Content)
        {
            repeater("General")
            {
                ShowCaption = false;
                field("No."; Rec."No.")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the vehicle''s no';
                }
                field("Description"; Rec.Description)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies a description of a vehicle.';
                }
                field("Description 2"; Rec."Description 2")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies a second description of a vehicle.';
                    Visible = false;
                }
                field("Search Description"; Rec."Search Description")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies text to search for when you do not know the number of the vehicle.';
                }
                field("Vechile Group Code"; Rec."Vehicle Group Code")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the vehicle''s type';
                }
                field("Inventory"; Rec.Inventory)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies how many vehicles are in inventory.';
                }
                field("Net Change"; Rec."Net Change")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the net change in the account balance during the time period in the Date Filter field.';
                }
                field("Purchase Amount"; Rec."Purchase Amount")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the vehicle''s total amount of purchase process';
                }
            }
        }
    }
}