page 70001 TestPAge
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = 70001;
    Caption = 'Test';

    layout
    {
        area(Content)
        {
            repeater(Name)

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
            action(Insert)
            {
                ApplicationArea = All;

                trigger OnAction()

                begin
                    Test.Reset();
                    Test.DeleteAll();
                    Message('All Data Delete');
                    Item.Reset();
                    if Item.FindSet() then
                        repeat
                            Test.Init();
                            Test."No." := Item."No.";
                            Test.Description := Item.Description;
                            Test.Inventory := Item.Inventory;
                            Test."Production BOM No." := Item."Production BOM No.";
                            Test.Insert();
                        until Item.Next() = 0;

                end;
            }
        }
    }

    var
        myInt: Integer;
        Item: Record Item;
        Test: Record 70001;
}