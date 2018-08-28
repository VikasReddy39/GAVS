global class scenario21 implements database.Batchable<Sobject>
{
    
    global database.QueryLocator start(database.BatchableContext BC)
    {
        string query ='select name,Email__c,Shipped__c,Contact__r.Email from source__c where Shipped__c = true ';
        return database.getQueryLocator(query);
    }
    global void execute (database.BatchableContext BC, List <source__c> abesr)
    {
        list<messaging.SingleEmailMessage> bulkmails = new list<messaging.SingleEmailMessage>();
        for(source__c a : abesr)
        {
            list<string> mailsenders = new list<string>();
            if(a.Email__c !=Null)
            {
              mailsenders.add(a.Email__c);
                          
            }
            else if(a.Contact__r.Email != Null)
            {
                mailsenders.add(a.Contact__r.Email);
                
            }
            
              List<source__c> souBulk = new List<source__c>();
              if(mailsenders.size()>0)
              {
              a.Email_sent__c = true;
              souBulk.add(a);
              update souBulk;
              messaging.SingleEmailMessage mail =  new messaging.SingleEmailMessage(); 
              mail.settoaddresses(mailsenders);
              mail.setsubject('this is my single email message');
              mail.setplaintextbody('this is body of an email. batch completed');
              bulkmails.add(mail);
               }
            
            
        }
       if(bulkmails.size() >0)
       {
           messaging.sendEmail(bulkmails);
       }
    
    }
    global void finish (database.BatchableContext Bc)
    {
        
    }

}