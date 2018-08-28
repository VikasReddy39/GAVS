public class catchCatch
{
    public void ExceptinCatching()
    {
        list<watch__c> accList = new list<watch__c>();
        set<id>accId = new set<id>();
        string a;
        list<string> b = new list<string>();
        list<watch__c>accErrorFiles = new list<watch__c>();
        list<watch__c>accUpdater = new list<watch__c>();
        accList = [SELECT NAME,price__c,testing__c FROM watch__c where name = 'TOMMY1'];
        for(watch__c w:accList)
        {
            w.testing__c = 300;
            accUpdater.add(w);
           
        }
        try
        {
            update accList;
        }
        catch(DMLexception e)
        {
           a = e.getDmlId(0);
            accId.add(a);
            b = e.getDmlFieldNames(0);
            //accErrorName.add(b);
            accErrorFiles = [select name,id from watch__c where id in :accId];
            e.getDmlFields(0);
            system.debug('Record id is '+a);
            system.debug('Record that updated failed :' +accErrorFiles);
            system.debug('Feild names :' +b);
            system.debug('message'+e.getDmlMessage(0));
            system.debug(':' +e.getDmlStatusCode(0));
            system.debug(':' +e.getStackTraceString());
        }
    }   
}