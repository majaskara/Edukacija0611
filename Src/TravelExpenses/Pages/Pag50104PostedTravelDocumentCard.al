page 50104 "Posted Travel Document Card"
{

    PageType = Card;
    SourceTable = "Posted Travel Order Header";
    Caption = 'Posted Travel Document Card';

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
            part(PostedTravelLines; "Posted Travel Lines")
            {
                ApplicationArea = All;
                SubPageLink = "Document No." = field("No.");
            }
        }
    }

}
