page 60102 "Vehicle Types"
{
    ApplicationArea = All;
    SourceTable = "Vehicle Type Table";
    PageType = List;
    UsageCategory = Lists;
    Caption = 'Vehicle Types';
    Editable = true;

    AboutTitle = 'About vehicle types';
    AboutText = 'Here you overview all entered vehicle types. You can add a new type or modify an existing type.';

    layout

    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Code"; Rec."Code")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the vehicle type';
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field("Description"; Rec."Description")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the description of the vehicle type';
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