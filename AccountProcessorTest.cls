@istest
public class AccountProcessorTest 
{
    public static testmethod void mathod1()
    {
        list<account>acc = new List<account>();
        list<contact>con = new List<contact>();
        list<id> ids = new list<id>();
        account a = new account();
        
        for(integer i=0;i<300;i++)
        {
            a = new account();
            a.Name ='test'+i;
            acc.add(a);
            
        }
        for(integer j=0;j<200;j++)
        {
            contact c = new contact();
            c.LastName = 'test'+j;
            c.LastName ='name';
            c.AccountId = a.id;
            con.add(c);
        }
        test.startTest();
        try
        {
            insert acc;
            insert con;
           
            ids.add(a.id);
        }
        catch (dmlexception de)
        {
            system.debug(':'+de);
        }
        
        AccountProcessor.countContacts(ids);
        test.stopTest();

        
        
    }

}