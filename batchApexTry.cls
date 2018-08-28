global class batchApexTry implements Database.Batchable<Sobject>
{
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        string query = 'SELECT NAME,ID,apple_2__c,tax__c FROM watch__c	';
            return Database.getQueryLocator(query);
    }   
    global void execute(database.BatchableContext BC,List <watch__c> listWatch)
    {
        for(watch__c c : listWatch)
        {
          c.tax__c = 'a0E6F00001OKI62';
            update c;
        }
        system.debug('records are :'+listWatch);
    }
    global void finish(database.BatchableContext BC)
    {
        
    }
        
        
}