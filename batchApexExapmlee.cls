global class batchApexExapmlee implements Database.Batchable<Sobject>
{
    global Database.QueryLocator start (Database.BatchableContext jik)
    {
        string query = 'SELECT NAME,ID,price__c,NAME_OF_THE_PRODUCT__c FROM APPLE__C WHERE NAME_OF_THE_PRODUCT__c =\'IPHONE\'';
          return database.getQueryLocator(query);
    }
    global void execute (Database.BatchableContext jik, List <APPLE__C> offer)
    {
        for(APPLE__c asd : offer)
        {
            asd.price__c = 150;
            update asd;
        }
    }
    global void finish (Database.BatchableContext jik)
    {
        //batchApexTry a = new batchApexTry();
        //database.executeBatch(a,8);
    }
}