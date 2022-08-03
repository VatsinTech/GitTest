table 50001 MyTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Integer)
        {
            DataClassification = ToBeClassified;

        }
    }

    /* keys
    {
        key(No.; No.)
        {
            Clustered = true;
        }
    } */

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