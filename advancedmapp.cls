public class advancedmapp 
{
    public void creatio()
    {
        list<account>acc = new list<Account>();
        for(account a:acc)
        {
            a.Name = 'trying';
            a.Phone = '123456789';
            insert acc;
        }
       // insert acc;
        system.debug('Account name' +acc );
    }

}