codeunit 50100 "Post Travel Order"
{
    //TableNo = "Travel Order Header";
    trigger OnRun()
    var
        GenJnlLine: Record "Gen. Journal Line";
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
        TravelLine: Record "Travel line";
    begin
        GenJnlPostLine.Run(GenJnlLine);
    end;

    local procedure InitGeneJnlLine(var GenJournalLine: Record "Gen. Journal Line")
    var
    begin
        GenJournalLine.Init();
        with GenJournalLine do begin
            Init();
            Validate("Document Date", Today);
            Validate("Document Type", "Document Type"::Invoice);
            Validate("Document No.");
        end;
    end;

}