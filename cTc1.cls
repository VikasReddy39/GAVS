public class cTc1 {
    public void cTcquery()
    {
        List <source__c> niltovalue = [select Name,Id,Money__c from source__c where Money__c = null]; 
        cTc2 b = new cTc2();
        List<source__c> valuegetter = new List<source__c>();
        valuegetter=b.queryupdate(niltovalue);
        system.debug(':'+valuegetter);
    }

}