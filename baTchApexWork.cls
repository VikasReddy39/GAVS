global class baTchApexWork implements Database.Batchable <Sobject>
{
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
       string query = 'select Name,id,Money__c from source__c where Money__c<89000'; 
        return database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List <source__c> COO )
    {
        list <source__c> coo1= new list<source__c>();
        for(source__c a:COO)
        {
            a.Money__c = 56789;
            coo1.add(a);
        } 
        try{
            update coo1;}
        catch(dmlexception d){}
    }
    global void finish(Database.BatchableContext bc)
    {
        
    }

}