tableextension 90001 "Employee_ext" extends Employee
{
    fields
    {
        // Add changes to table fields here
        field(90000; "Permanent Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}