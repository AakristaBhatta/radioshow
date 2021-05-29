page 90000 "Radio Show"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Radio Show";
    CardPageId = "Radio Show Card";
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field("Radio Show Type"; rec."Radio Show Type")
                {
                    ApplicationArea = All;
                }
                field(Name; rec.name)
                {
                    ApplicationArea = All;
                }
                field(Runtime; Rec.Runtime)
                {
                    ApplicationArea = All;
                }
                field("Host No."; Rec."Host No.")
                {
                    ApplicationArea = All;
                }
                field("Host Name"; Rec."Host Name")
                {
                    ApplicationArea = All;
                }
                field("Average Listeners"; Rec."Average Listeners")
                {
                    ApplicationArea = All;
                }
                field("Audience Share"; Rec."Audience Share")
                {
                    ApplicationArea = All;
                }
                field("Advertising Revenue"; Rec."Advertising Revenue")
                {
                    ApplicationArea = All;
                }
                field("Royalty Cost"; Rec."Royalty Cost")
                {
                    ApplicationArea = All;
                }

            }


        }
        area(FactBoxes)
        {
            part(Fans; "Radio Show Fan Factbox")
            {
                SubPageLink = "Radio Show No." = field("No.");
                ApplicationArea = basic;
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