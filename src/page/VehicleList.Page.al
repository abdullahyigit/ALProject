page 50300 "Vehicle List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Vehicle Table";
    Editable = false;
    Caption = 'Vehicle List';
    PromotedActionCategories = 'New Vehicle';
    RefreshOnActivate = true;
    CardPageID = "Vehicle Card";

    layout
    {
        area(Content)
        {
            repeater(asd)
            {
                field("No."; "No.")
                {
                    ApplicationArea = all;
                }
                field("Description"; Description)
                {
                    ApplicationArea = all;
                }
                field("Search"; Search)
                {
                    ApplicationArea = all;
                }
                field("VechileGroupCode"; VechileGroupCode)
                {
                    ApplicationArea = all;
                }
                field("Stock"; Stock)
                {
                    ApplicationArea = all;
                }
                field("NetChange"; NetChange)
                {
                    ApplicationArea = all;
                }
            }
        }
    }
    /*
        actions
        {

            area(Creation)
            {
                action("New Vehicle")
                {

                }
            }

        }*/

    var
}