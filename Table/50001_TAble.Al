table 50001 TEST
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "No."; Code[20]) { DataClassification = ToBeClassified; }
        field(2; Description; Text[100]) { DataClassification = ToBeClassified; }
        field(3; "Inventory"; Decimal) { DataClassification = ToBeClassified; }
        field(4; "Production BOM No."; Code[20]) { DataClassification = ToBeClassified; }
    }

    keys
    {
        key(PK; "No.")
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