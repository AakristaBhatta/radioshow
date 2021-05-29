page 90002 "Date Formula"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Date Formula";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Primary Key"; rec."Primary Key")
                {
                    ApplicationArea = All;

                }
                field("Date Formula to Test"; rec."Date Formula to Test")
                {
                    ApplicationArea = All;
                }
                field("Reference for Date Calculation"; Rec."Reference for Date Calculation")
                {
                    ApplicationArea = All;
                }
                field("Date Result"; Rec."Date Result")
                {
                    ApplicationArea = All;
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
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}