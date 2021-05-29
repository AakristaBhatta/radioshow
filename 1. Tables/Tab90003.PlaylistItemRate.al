table 90003 "Playlist Item Rate"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Source Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = ,Vendor,Customer;

        }
        field(2; "Source No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = if ("Source Type" = const(Vendor)) Vendor."No."
            else
            if ("Source Type" = const(Customer)) Customer."No.";
        }
        field(3; "Item No."; Code[20])
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
        field(6; "Rate Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Publisher Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Source Type")
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