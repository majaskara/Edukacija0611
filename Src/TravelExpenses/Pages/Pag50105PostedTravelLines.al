page 50105 "Posted Travel Lines"
{

    PageType = ListPart;
    SourceTable = "Posted Travel line";
    Caption = 'Posted Travel Lines';

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Line No."; "Line No.")
                {
                    ApplicationArea = All;
                }
                field("Destination Description"; "Destination Description")
                {
                    ApplicationArea = All;
                }
                field("End Date Time"; "End Date Time")
                {
                    ApplicationArea = All;
                }
                field("Start Date Time"; "Start Date Time")
                {
                    ApplicationArea = All;
                }
                field(Destination; Destination)
                {
                    ApplicationArea = All;
                }
                field("Cost Type"; "Cost Type")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
