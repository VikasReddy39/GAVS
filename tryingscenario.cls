public class tryingscenario 
{
    /*public void listsetmap()
    {
        list<account> acclist = new list<account>();
        
         
            account asere= new account(Name ='ravi',Phone = '9876543210',Industry = 'Banking');
            //asere.AnnualRevenue=90876;
            acclist.add(asere);
            //system.debug('new' +asere);
        insert acclist;
        
       system.debug('new' +acclist);
    }
    public void updaterecord()
    {
        list<account> accountlist = [select Name,phone,id from account where Name='ravi'];
        for(account a: accountlist)
        {
            a.name='booka';

        }
update(accountlist);}*/
    
    public void deletetherecord()
    {
        list<account> acclist =[select name,phone,id from account where name='booka'];
        delete (acclist); 
        list<account> acc1 = new list<account>();
        account a1 = new account(Name ='killbillpandy');
        account a2 = new account(Name='shymala');
        acc1.add(a1);
        acc1.add(a2);
        insert (acc1);
        list<account>acc2=[select name,id from account where industry = 'banking'];
        for(account a: acc2)
        {
            a.industry = 'banking';
        }
        update acc2;
    }
    

}