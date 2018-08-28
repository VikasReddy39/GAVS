public class AccountTriggerHandler 
{
    public static void CreateAccounts(list<account>acc)
    {
       // list<account>updateacc = new list<account>();
        for(account a:acc)
        {
            
                a.ShippingState= a.BillingState ;
                
         
        }
       // update updateacc;
    }

}