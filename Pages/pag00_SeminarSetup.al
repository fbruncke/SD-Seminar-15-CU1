page 50100 "CSD Seminar Setup"
//FHA1.00 20190219 something smart
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Setup";
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;


    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                Caption = 'Numbering';

                field("Seminar Nos."; "Seminar Nos.")
                {
                    ApplicationArea = All;
                }

                field("Seminar Registration Nos."; "Seminar Registration Nos.")
                {
                    ApplicationArea = All;
                }

                field("Posted Seminar Reg. Nos."; "Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = All;
                }

            }
        }
    }


    trigger OnOpenPage()
    begin
        if not get('') then begin   //if no blank primary key, then insert one
            init;
            insert;
        end;
    end;
}