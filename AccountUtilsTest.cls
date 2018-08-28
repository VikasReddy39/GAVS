@istest
public class AccountUtilsTest 
{
    public static testmethod void method1()
    {
        account a ;
        list<account>acc = new list<account>();
        for(integer i=0;i<200;i++)
        {
            a = new account();
            a.name = i+'test';
            a.BillingCity = 'city'+i;
            acc.add(a);
        }
        insert acc;
        AccountUtils.accountsByState(a.BillingState);
    }

}