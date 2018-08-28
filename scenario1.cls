global class scenario1 implements Database.Batchable<Sobject>{
    global Database.QueryLocator start (database.BatchableContext bc)
    {
        string query ='select name, id ,Email_sent__c,Email__c,Contact__r.Email,Shipped__c from source__c where Shipped__c= True';
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext bc, list<source__C> imp)
    {
        messaging.SingleEmailMessage mail = new messaging.SingleEmailMessage();
           String[] toaddress = new String[]{'sandeepe2016@gmail.com'};
             mail.settoaddresses(toaddress);  
           mail.setsubject('this is my single email message');
           mail.setplaintextbody('this is body of an email. batch completed');
           messaging.sendEmail(new messaging.SingleEmailMessage[]{mail});
    }
    global void finish(database.BatchableContext bc)
    {
        
    }

}