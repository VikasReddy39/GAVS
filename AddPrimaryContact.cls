public class AddPrimaryContact implements queueable
{
    private string stateabb;
    public contact cont;
    public AddPrimaryContact(contact c, string abbreviationf)
    {
         c = cont;
        abbreviationf = stateabb;
    }
    public void execute (queueablecontext qc)
    {
       list<account> acc = new list<account>();
        list<contact>con = new list<contact>();
        acc =[select name,id,billingstate from account where billingstate =:stateabb limit 200];
        for(account a:acc)
        {
            cont = new contact();
            cont.LastName = a.Name;
            cont.AccountId = a.id;
            con.add(cont);
        }
        insert con;
    }

}