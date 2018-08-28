@istest
public class sqldmlTest 
{
    public static testmethod void method1()
    {
        account a = new account();
        a.name ='test';
        a.AnnualRevenue =34567689;
        insert a;
        
    }

}