@istest
public class AccountTriggerTest 
{
    public static testmethod void method1()
    {
        account a ;account a1;
        list<account>acc = new list<account>();
        for(integer i=0;i<200;i++)
        {
            a = new account();
            a.Name = 'test'+i;
            a.BillingState = 'CA' ;
            a.ShippingState = 'CA';
            acc.add(a);
        }
        insert acc;
        a1.Name = 'test';a1.BillingState ='test';a1.ShippingState = 'rest';
        insert a1;
    }

}