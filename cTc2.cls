public class cTc2 {
    public List<source__c> queryupdate (list<source__c> nilupdate)
    {
        list <source__c> moneyupdate = new list <source__c>();
        for(source__c a : nilupdate)
        {
            a.Money__c = 40000;
            moneyupdate.add(a);
        }
        update moneyupdate;
        return moneyupdate;
    }

}