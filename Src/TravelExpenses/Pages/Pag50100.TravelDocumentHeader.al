page 50100 "Travel Document Header"
{

    PageType = List;
    SourceTable = "Travel Order Header";
    Caption = 'Travel Document Header';
    ApplicationArea = All;
    UsageCategory = Lists;

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
                field(SystemId; SystemId)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
