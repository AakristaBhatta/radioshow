pageextension 90000 "EmployeeCard_ext" extends "Employee Card"
{
    layout
    {
        // Add changes to page layout here
        addafter("Job Title")
        {
            field("Permanent Date"; Rec."Permanent Date")
            {
                ApplicationArea = All;

            }
        }

    }


    actions
    {
        // Add changes to page actions here
        addafter("A&bsences")
        {
            action("Change Permanent Date")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                trigger OnAction()
                var
                    varDateItem: Text[30];
                    ScheduleDate: Date;
                    Emp: Record Employee;//this is used by filter page builder 
                    Empl: Record Employee;// value assign garna use 

                    varFilterPageBuilder: FilterPageBuilder;
                    varDateRecordRef: RecordRef;
                    EmpPermDate: TextConst ENU = 'Enter the new permanent Date';
                begin
                    varDateItem := 'Change Permanent Date';
                    varFilterPageBuilder.AddRecord(varDateItem, Emp);
                    varFilterPageBuilder.AddField(varDateItem, Emp."Permanent Date");
                    varFilterPageBuilder.AddField(varDateItem, emp.Gender);
                    if varFilterPageBuilder.RunModal() then begin
                        Emp.SETVIEW(varFilterPageBuilder.GETVIEW(varDateItem));
                        Empl.Get(Rec."No.");
                        evaluate(Empl."permanent date", Emp.getfilter("permanent date"));
                        evaluate(Empl.Gender, Emp.GetFilter(Gender));
                        Empl.Modify(true);
                    end;
                    Message('Your Permanent Date is changed');
                end;
            }

        }
    }


    var
        myInt: Integer;
        postingdate: Date;


}