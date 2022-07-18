page 60100 "Vehicle List"
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
                field("No."; "No.")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the vehicle''s no';
                }
                field("Description"; Description)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the vehicle''s description';
                }
                field("Search"; Search)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the vehicle''s search name';
                }
                field("Vechile Group Code"; "Vehicle Group Code")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the vehicle''s type';
                }
                field("Stock"; Stock)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the vehicle''s stock amount';
                }
                field("Net Change"; "Net Change")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the vehicle''s net change amount. Difference from the stock value is the net change has a date filter';
                }
                field("Amount of Purchase"; "Amount of Purchase")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the vehicle''s total amount of purchase process';
                }
            }
        }
    }
}