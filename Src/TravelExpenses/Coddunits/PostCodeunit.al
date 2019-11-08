codeunit 50100 "Post Travel Order"
{
    TableNo = "Travel Order Header";
    trigger OnRun()
    var
        GenJournalLine: Record "Gen. Journal Line";
        GenJnlLine: Record "Gen. Journal Line";
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
        TravelLine: Record "Travel line";
    begin
        InitGeneJnlLine(GenJnlLine);
        Post(GenJnlLine);
    end;

    local procedure Post(GenJnlLine: Record "Gen. Journal Line")
    var
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
    begin
        GenJnlPostLine.Run(GenJnlLine);
        Message('bravo1');
    end;

    local procedure InitGeneJnlLine(var GenJournalLine: Record "Gen. Journal Line")
    var
    begin
        GenJournalLine.Init();
        with GenJournalLine do begin
            Init();
            Validate("Line No.", 20000);
            Validate("Posting Date", Today);
            Validate("Journal Template Name", 'PURCH');
            Validate("Journal Batch Name", 'DEFAULT');
            Validate("Document Date", Today);
            Validate("Document Type", "Document Type"::Invoice);
            Validate("Account Type", "Account Type"::Vendor);
            Validate("Account No.", '20319939');
            Validate("Document No.", 'TR-002');
            Validate("External Document No.", '12344');
            Validate(Amount, -1222);
            Validate("Bal. Account No.", '1320');
            Insert(true);
        end;
        Message('Bravo Perger');
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterInitVendLedgEntry', '', true, true)]
    local procedure OnAfterInitVendLedgEntry(var VendorLedgerEntry: Record "Vendor Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
        VendorLedgerEntry."Travel Cost" := true;
    end;

}