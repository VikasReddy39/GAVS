global class EmailMonthly implements database.Batchable<sobject>,database.stateful
{
    public account account{set;get;}
    public list<account> acca{set;get;}
    global EmailMonthly()
        
    {
        account = new account();
    }
    
    
    global database.QueryLocator start (database.BatchableContext Bc)
    {
        string query ='select name,id,phone,email__c,Monthly_Email__c,description from account where name = \'as\'';
        return database.getQueryLocator(query);
    }
    global void execute (database.BatchableContext bc, list<account>ac)
    {
        list<account>accupdate = new list<account>();
        for(account a:ac)
        {
            acca=[select name,id,phone,email__c from account where name=:a.name];
            if(a.Email__c != null)
            {
                
                messaging.SingleEmailMessage si = new messaging.SingleEmailMessage();
                pagereference ref = page.attachmentforemailvf;
                Blob b = ref.getContent();
                Messaging.EmailFileAttachment efa1 = new Messaging.EmailFileAttachment();
        efa1.setFileName('attachment_WORK.pdf');
        efa1.setBody(b);

                
                string[] adress = new string[]{a.Email__c};
                si.settoaddresses(adress);
                
                si.setsubject('Hi');
                si.setplaintextbody ('This is mobthly mail from sfdc');
                si.setFileAttachments(new Messaging.EmailFileAttachment[] {efa1});
                messaging.SendEmailResult[] sir =  messaging.sendEmail(new messaging.SingleEmailMessage[]{si});
               
                a.Monthly_Email__c = true;
                accupdate.add(a);
            }
        }
        update accupdate;
        
    }
    global void finish (database.BatchableContext bc)
    {
        
    }

}