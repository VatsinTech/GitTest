page 50001 TestPAge
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = 50001;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; rec."No.") { ApplicationArea = All; }
                field(Description; rec.Description) { ApplicationArea = all; }
                field(Inventory; rec.Inventory) { ApplicationArea = all; }
                field("Production BOM No."; rec."Production BOM No.") { ApplicationArea = all; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}