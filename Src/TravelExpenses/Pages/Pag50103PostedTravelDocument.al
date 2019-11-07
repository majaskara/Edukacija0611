page 50103 "Posted Travel Document"
{

    PageType = List;
    SourceTable = "Posted Travel Order Header";
    Caption = 'Posted Travel Document';
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = 50104;

    layout
    {
        area(content)
        {
            repeater(General)
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
        }
    }

}
