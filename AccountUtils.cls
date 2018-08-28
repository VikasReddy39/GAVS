public class AccountUtils
{
    public static list<account> accountsByState (string state)
    {
        list<account>acc = new list<account>();
        acc =[select name,id,billingstate from account where billingstate =:state];system.debug(':'+acc);system.debug('completed');
        return acc;
        
    }

}