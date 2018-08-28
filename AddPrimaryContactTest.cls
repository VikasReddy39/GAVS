@istest
public class AddPrimaryContactTest 
{
    public static testmethod void method1()
    {
        list<account>acc = new list<account>();
        list<account>acc1= new list<account>();
        for(integer i=0;i<50;i++)
        {
            account a = new account();
            a.Name = 'test'+i;
            a.BillingCity ='CA';
            acc.add(a);
        }
        for(integer j=51;j<100;j++)
        {
            account a1 = new account ();
            a1.name ='test'+j;
            a1.BillingCity ='NY';
            acc1.add(a1);
        }
        insert acc;
        insert acc1;
        contact c1 = new contact(lastname='happ');
        insert c1;
        string abbreviation ='CA';
        AddPrimaryContact a = new AddPrimaryContact(c1, abbreviation);
        test.startTest();
        system.enqueueJob(a);
        test.stopTest();
    }

}