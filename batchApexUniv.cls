global class batchApexUniv implements database.Batchable<Sobject>
{
    global database.QueryLocator start (database.BatchableContext BC) 
    {
        string unilaunch = 'select name,EMAIL__c,University_Under__r.University_Email__c from COLLEGE__c where University_Applicable__c = true ';
        return database.getQueryLocator(unilaunch);
    }
    
    global void execute (database.BatchableContext BC , List<COLLEGE__C> unired1)
    {
        list < messaging.SingleEmailMessage > unired3 = new List < messaging.SingleEmailMessage >(); 
        for(COLLEGE__c a : unired1)
        {
            List<string> unirec2 = new List<string>();
            if(a.EMAIL__c != Null)
            {
             unirec2.add(a.EMAIL__c);
            }
            else if(a.University_Under__r.University_Email__c != Null)
            {
                unirec2.add(a.University_Under__r.University_Email__c);
            }
            if(unirec2.size()>0)
            {
                
              messaging.SingleEmailMessage mail = new messaging.SingleEmailMessage(); 
              mail.settoaddresses(unirec2);
              mail.setsubject('this is my single email message');
              mail.setplaintextbody('this is body of an email. batch completed');
              unired3.add(mail);  
            }
          
        
       }
          if(unired3.size()>0)
            {
               messaging.sendEmail(unired3);
            }
    }
    global void finish(database.BatchableContext BC)
        {  
             
        }
        
        }