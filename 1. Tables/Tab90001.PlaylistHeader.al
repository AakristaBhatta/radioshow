table 90001 "Playlist Header"
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
        field(3; "Description"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Broadcast Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Duration"; Duration)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Start Time"; Time)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "End Time"; Time)
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