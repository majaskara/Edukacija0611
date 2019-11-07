pageextension 50103 "Vendor Ledger Entry Entend" extends "Vendor Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field("Travel Cost"; "Travel Cost")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}