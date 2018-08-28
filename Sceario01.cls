global class Sceario01 implements database.Batchable<Sobject>
{
    global database.QueryLocator start(database.BatchableContext BC)
    {
        string query ='select name,Email__c,Contact__r.Email from source__c where shipped__c=true';
        return database.getQueryLocator(query);
    }  
    global void execute(database.BatchableContext BC, List<source__c> sourcelist)
    {
        List <Messaging.SingleEmailMessage> sendMails = new List<messaging.SingleEmailMessage>();
        for(source__c a : sourcelist)
        {
            messaging.SingleEmailMessage mail = new messaging.SingleEmailMessage();
            list<string> maillist = new list<string>();
            if(a.Email__c!= Null)
            {
               maillist.add(a.Email__c);
                update a;
          /* mail.settoaddresses(maillist);  
           mail.setsubject('this is my single email message');
           mail.setplaintextbody('this is body of an email. batch completed');
           messaging.sendEmail(new messaging.SingleEmailMessage[]{mail});*/
            }
            else if(a.Contact__r.Email != Null) 
            {
               maillist.add(a.Contact__r.Email); 
                update a;
           /*mail.settoaddresses(maillist);  
           mail.setsubject('this is my single email message');
           mail.setplaintextbody('this is body of an email. batch completed');
           messaging.sendEmail(new messaging.SingleEmailMessage[]{mail});*/
            }
            if(maillist.size() >0){
           mail.settoaddresses(maillist);  
           mail.setsubject('this is my single email message');
           mail.setplaintextbody('this is body of an email. batch completed');
           sendmails.add(mail);
            }
        }
        if(sendmails.size() > 0)
        {
            messaging.sendEmail(sendmails);
        }
    }
    
    global void finish (database.BatchableContext BC)
    {
        
    }
}