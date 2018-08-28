public class AccountHandler
{
   
    public static void counting(set<id>ids1)
    {
        
        list<contact>con = new list<contact>(); 
        list<account>acc = new list<account>();
        list<account>accup = new list<account>();
    acc=[select name,id,Number_Child__c,(select lastname,id,accountid from contacts) from account where id in:ids1];
    con = [select name,accountid from contact where accountid in:ids1];
    for(account a:[select name,id,Number_Child__c from account where id in:ids1])
    {
        a.Number_Child__c = con.size();
        accup.add(a);
    }
        triggerrecurssiionstop.run = true;
        update accup;
        
    }

}