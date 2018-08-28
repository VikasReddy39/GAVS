public class trytry {
    public void display()
    {
        List <source__c> souList = [SELECT Name,Tax__c FROM source__c WHERE tax__c > 10];
        catchCatch c = new catchCatch ();
        List <source__c> souRet = new List <source__c> ();
        souRet = c.caluclate(souList);
        system.debug('updated values in souRet are:'+souRet);
        
    }
	
}