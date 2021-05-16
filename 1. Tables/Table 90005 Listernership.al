table 90005 "Listernership Entry"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Ratings Source Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Start Time"; Time)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "End Time"; Time)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Radio Show No."; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Listener Count"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Audience Share"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Age Demographic"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = ,"0-12","13-18","19-34","35-50","51+";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Reporting; "Radio Show No.", Date, "Start Time", "Age Demographic")
        {
            SumIndexFields = "Listener Count";
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}