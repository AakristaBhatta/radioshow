page 90006 "Listenership"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Listernership Entry";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;

                }
                field("Radio Show No."; "Radio Show No.")
                {
                    ApplicationArea = All;
                }
                field("Ratings Source Entry No."; "Ratings Source Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Audience Share"; "Audience Share")
                {
                    ApplicationArea = All;
                }
                field("Age Demographic"; "Age Demographic")
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