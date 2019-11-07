table 50101 "Travel line"
{
    Caption = 'Travel line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = ToBeClassified;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
        field(3; Destination; Code[20])
        {
            Caption = 'Destination';
            DataClassification = ToBeClassified;
        }
        field(4; "Destination Description"; Text[80])
        {
            Caption = 'Destination Description';
            DataClassification = ToBeClassified;
        }
        field(5; "Start Date Time"; DateTime)
        {
            Caption = 'Start Date Time';
            DataClassification = ToBeClassified;
        }
        field(6; "End Date Time"; DateTime)
        {
            Caption = 'End Date Time';
            DataClassification = ToBeClassified;
        }
        field(7; "Cost Type"; Enum "Travel Cost Type")
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

}
