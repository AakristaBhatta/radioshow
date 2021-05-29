page 90008 "Radio Show Fan Factbox"
{
    PageType = ListPart;
    SourceTable = "Radio Show Fan";

    layout
    {
        area(Content)
        {
            group("Radio Show Fan")
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field("E-mail"; Rec."E-mail")
                {
                    ApplicationArea = All;
                }
                field("Last Contacted"; Rec."Last Contacted")
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