global class batchApexExample implements Database.Batchable<Sobject>, database.stateful
{
    //list<messaging.SingleEmailMessage> mails = new list<messaging.SingleEmailMessage>();
    string a ;
    list<string> b = new list<string>();
    list<watch__c>watchErrorName = new list<watch__c>();
    set<id>watchId = new set<Id>();
    list<watch__c>watchErrorFiles = new list<watch__c>();
	global Database.QueryLocator start(Database.BatchableContext bc)
    {
        string query ='SELECT NAME,price__c,testing__c FROM watch__c where name = \'TOMMY1\'';
        return Database.getQueryLocator(query);
    }
    global void execute (Database.BatchableContext bc, List<watch__c> assd)
    {
        list<watch__c> watchUpdate = new list<watch__c>();
        for(watch__c ji: assd)
        {
            ji.testing__c = 300;
            watchUpdate.add(ji);
            
        }
        try
        {
          update assd;  
        }
        catch(DmlException e)
        {
            a = e.getDmlId(0);
            watchId.add(a);
            b = e.getDmlFieldNames(0);
            //accErrorName.add(b);
            watchErrorFiles = [select name,id from watch__c where id in :watchId];
            e.getDmlFields(0);
            //system.debug(':' +b);
            messaging.SingleEmailMessage mail = new messaging.SingleEmailMessage();
           String[] toaddress = new String[]{'c.vikasreddy3@gmail.com'};
             mail.settoaddresses(toaddress);  
           mail.setsubject('this is my single email message');
           mail.setplaintextbody(  'the results are' +watchErrorFiles 
            						+a
								  +e.getDmlFieldNames(0)
								   +e.getDmlFields(0)
                                  +e.getDmlType(0)
                                  +e.getDmlMessage(0)
                                +e.getDmlStatusCode(0)
                                +e.getLineNumber());
            
           messaging.sendEmail(new messaging.SingleEmailMessage[]{mail});
            system.debug(+e.getDmlFieldNames(0));
        }
        catch(exception de)
        {
           messaging.SingleEmailMessage mail = new messaging.SingleEmailMessage();
           String[] toaddress = new String[]{'c.vikasreddy3@gmail.com'};
             mail.settoaddresses(toaddress);  
           mail.setsubject('this is my single email message');
           mail.setplaintextbody(  +de.getLineNumber() +de.getMessage()  +de.getTypeName() );
            
           messaging.sendEmail(new messaging.SingleEmailMessage[]{mail});
        }
        
    }
       global void finish(Database.BatchableContext bc)
       {
           
       }
    
}