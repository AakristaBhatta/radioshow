page 90007 "Pubisher"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Publisher;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(code; rec.code)
                {
                    ApplicationArea = all;

                }
                field("Description"; rec.Description)
                {
                    ApplicationArea = all;

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