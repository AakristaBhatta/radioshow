table 90008 "Radio Show Fan"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Radio Show No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "E-mail"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Last Contacted"; Date)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
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