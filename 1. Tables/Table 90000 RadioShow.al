table 90000 "Radio Show"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Radio Show Type"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Runtime"; Duration)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Host No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Host Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Average Listeners"; Decimal)
        {
            //DataClassification = ToBeClassified;
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("Listernership Entry"."Listener Count" where("Radio Show No." = field("No."), Date = field("Date Filter")));
        }
        field(8; "Audience Share"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = average("Listernership Entry"."Audience Share" where("Radio Show No." = field("No."), Date = field("Date Filter")));
        }
        field(9; "Advertising Revenue"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Radio Show Entry"."Fee Amount" where(
                "Radio Show No." = field("No."),
                "Data Format" = filter(Advertisement)
            ));
        }
        field(10; "Royalty Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Date Filter"; Date)
        {
            //DataClassification = ToBeClassified;
            FieldClass = FlowFilter;
        }
        field(12; "Frequency"; integer)
        {
            DataClassification = ToBeClassified;
        }
        field(13; "PSA Planned Quantity"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Ads Planned Qantity"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(15; "Sports Required"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(16; "News Required"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Weather Required"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(18; "Weather Duration"; Duration)
        {
            DataClassification = ToBeClassified;
        }
        field(19; "News Duration"; Duration)
        {
            DataClassification = ToBeClassified;
        }
        field(20; "Sports Duration"; Duration)
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
        Cust: Record Customer;

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