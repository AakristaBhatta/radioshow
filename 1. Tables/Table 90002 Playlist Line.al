table 90002 "Playlist Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document No."; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = ,Resource,Show,Item;
        }
        field(4; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = if (Type = const(Resource)) Resource."No."
            else
            if (Type = const(Show)) "Radio Show"."No."
            else
            if (Type = const(Item)) Item."No.";
        }
        field(5; "Data Format"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement;
        }
        field(6; "Publisher"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Description"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Duration"; Duration)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Start Time"; Time)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "End Time"; Time)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
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