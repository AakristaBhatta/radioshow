tableextension 90000 "Item_ext" extends Item
{
    fields
    {
        // Add changes to table fields here
        field(90000; "Publsisher Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(90001; "ASCAP ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(90002; "Duration"; Duration)
        {
            DataClassification = ToBeClassified;
        }
        field(90003; "Date Format"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement;
        }
        field(90004; "MP3 Location"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}