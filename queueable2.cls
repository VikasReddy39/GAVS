public class queueable2 implements queueable 
{
    public void execute (queueablecontext qc)
    {
        contact c = new contact();
        c.lastname ='queueable contact';
      //c.accountid = a.id;
        insert c;
        system.debug(':'+c);
    }

}