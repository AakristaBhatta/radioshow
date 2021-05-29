report 90000 "Demo"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    
    dataset
    {
        dataitem("Radio Show Type";"Radio Show Type")
        {
        
            column(code;code){}
            column(Description;Description){}
            dataitem("Radio Show";"Radio Show"){
                DataItemLink = "Radio Show Type" = field(code);
                PrintOnlyIfDetail = true;
                column(No_;"No."){
                    IncludeCaption = true;
                }
                column(Name;Name){IncludeCaption= true;}
                column(Runtime;Runtime){IncludeCaption = true;}
                dataitem("Playlist Header";"Playlist Header"){
                    DataItemLink = "Radio Show No." = field("No.");
                    column(Broadcast_Date;"Broadcast Date"){}
                    column(Start_Time;"Start Time"){}
                }
            }
        }
    }
    
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;
                        
                    // }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;
                    
                }
            }
        }
    }
    
    var
        myInt: Integer;
}