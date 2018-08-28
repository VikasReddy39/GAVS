public class AccountProcessor 
{
    @future
    public static void countContacts (List<id> ids)
    {
        list<account> accList = new list<account>();
        list<account> accList1 = new list<account>();        
        accList =[select name,id,(select name,id,account.id from contacts) from account where id in:ids];
        list<contact>Con = new List<contact>();
        con = [select name,id,account.id from contact where account.id in:ids ];
        for(account a:accList)
        {
           a.Number_of_Contacts__c = con.size();
            
           
            accList1.add(a);
        }
        update accList1;
    }

}