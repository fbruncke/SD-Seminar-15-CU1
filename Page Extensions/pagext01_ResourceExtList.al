pageextension 50101 "CSD ResourceListExt" extends "Resource List"
//FHA1.00 20190219 something smart
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;

        }

        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                ApplicationArea = All;
            }

            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
                ApplicationArea = All;
            }

        }

    }

    actions
    {
        // Add changes to page actions here
    }

    trigger OnOpenPage()
    begin
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = format(Type::Machine));
    end;

    var
        [InDataSet]
        ShowType: Boolean;
        ShowMaxField: Boolean;
}