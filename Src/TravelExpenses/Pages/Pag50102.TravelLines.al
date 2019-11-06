page 50102 "Travel Lines"
{

    PageType = ListPart;
    SourceTable = "Travel line";
    Caption = 'Travel Lines';
    AutoSplitKey = true;

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
            }
        }
    }

}
