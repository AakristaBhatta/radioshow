table 90004 "Radio Show Entry"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Radio Show No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = ,Resource,Show,Item;
        }
        field(4; "Description"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Data Format"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement;
        }
        field(7; "Time"; Time)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Duration"; Duration)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Fee Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "ACSAP ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(11; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Reporting; "Radio Show No.", Date)
        {
            SumIndexFields = "Fee Amount";
        }
        key(Reporting2; "No.", Type, Date)
        {
            SumIndexFields = "Fee Amount";
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