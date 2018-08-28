@istest
public class AcountAddressTriggerTest 
{
    public static testmethod void method1()
    {
        account a = new account();
        a.name ='test';
        a.Match_Billing_Address__c = true;
        a.BillingPostalCode ='517504';
        insert a;
    }

}