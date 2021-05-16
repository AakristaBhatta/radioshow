page 90001 "Radio Show Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Radio Show";

    layout
    {
        area(Content)
        {
            group(Group)
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
                field(Frequency; rec.Frequency)
                {
                    ApplicationArea = All;
                }
            }
            group(Requirements)
            {
                field("PSA Planned Quantity"; Rec."PSA Planned Quantity")
                {
                    ApplicationArea = All;
                }
                field("Ads Planned Qantity"; Rec."Ads Planned Qantity")
                {
                    ApplicationArea = All;
                }
                field("News Required"; Rec."News Required")
                {
                    ApplicationArea = All;
                }
                field("News Duration"; Rec."News Duration")
                {
                    ApplicationArea = All;
                }
                field("Sports Required"; Rec."Sports Required")
                {
                    ApplicationArea = All;
                }
                field("Sports Duration"; Rec."Sports Duration")
                {
                    ApplicationArea = All;
                }
                field("Weather Required"; Rec."Weather Duration")
                {
                    ApplicationArea = All;
                }

            }
            group(Statistics)
            {
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