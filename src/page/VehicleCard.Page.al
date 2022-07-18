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