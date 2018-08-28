public class listTOmap {
    public void lTm()
    {
        list<source__c> ltmdo = [select name,id,Money__c from source__c ];
        map<id,source__c> ltm1 = new map<id,source__c>();
        map<id,decimal> ltm2 = new map<id,decimal>();
        for (source__c a:ltmdo)
        {
            ltm1.put(a.id,a);
            ltm2.put(a.id,a.Money__c);
        }
      system.debug(':'+ltm1);
        system.debug(':'+ltm2);
        
    }

}