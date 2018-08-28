@isTest
public class AccountManagerTest {

    @isTest public static void executeGetAccount(){
        //making Data ready for Testing
        Account acc = new Account(Name='Jayanth B');
        insert acc;
        insert new Contact(LastName='Jayanth',FirstName='b',AccountId=acc.id);
        
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestURI = 'https://ap4.salesforce.com/services/apexrest/Accounts/'+(String)acc.id+'/contacts';
        request.httpMethod ='GET';
        //set up request Context 
        RestContext.request =  request;
        // call the method
        Account returnedAcc = AccountManager.getAccount();

    }
    @istest public static void accountaddresstriggertest()
    {
        account a; list<account>acc = new list<account>();
        for(integer i=0;i<200;i++)
        {
            a = new account ();
            a.name ='test'+i;
            a.Match_Billing_Address__c = true;
            a.BillingPostalCode = '51740';
            acc.add(a);
        } insert acc;
        a = new account();
        a.name ='test1';
        insert a;
    }
    @istest public static void AccountTriggertest()
    {
        account a; list<account>acc = new list<account>();
        for(integer i=0;i<200;i++)
        {
            a = new account ();
            a.name ='test'+i;
            a.Match_Billing_Address__c = true;
            a.BillingPostalCode = '51740';
            acc.add(a);
        } insert acc;
        a = new account();
        a.name ='test1';
        insert a;
        
    }
   @istest public static  void AccountTriggers1Test()
    {
        account a; list<account>acc = new list<account>();contact c;list<contact>con = new list<contact>();
        for(integer i=0;i<200;i++)
        {
            a = new account ();
            a.name ='test'+i;
            a.Match_Billing_Address__c = true;
            a.BillingPostalCode = '51740';
            acc.add(a);
            c = new contact();
            c.lastname ='test'+i;
            c.AccountId = a.Id;con.add(c);
        } insert acc;insert con;
        a = new account();
        a.name ='test1';a.AnnualRevenue = 90876434;
        insert a;
        
        
    }
    @istest public static  void childRecordTest()
    {
        account a; list<account>acc = new list<account>();contact c;list<contact>con = new list<contact>();
        
        a = new account();c = new contact();
            
        a.name ='test';insert a;
        c.lastname ='test';
            c.AccountId = a.Id;
        insert c;
        
        
    }
}