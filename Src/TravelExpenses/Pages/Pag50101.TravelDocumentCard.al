page 50101 "Travel Document Card"
{

    PageType = Card;
    SourceTable = "Travel Order Header";
    Caption = 'Travel Document Card';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Employee Name"; "Employee Name")
                {
                    ApplicationArea = All;
                }
                field("Employee No."; "Employee No.")
                {
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
            }
            part(TravelLines; "Travel Lines")
            {
                ApplicationArea = All;
                SubPageLink = "Document No." = field("No.");
            }
        }
    }

}
