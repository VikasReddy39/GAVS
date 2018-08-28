@isTest
public class EmailcopyingFromaccountTest 
{
    public static testmethod void trigtest()
    {
       
        Account ac1 = new Account(Name = 'vikas',Email__c ='aas@gmail.com');
        Insert ac1;
        Contact con1 = new Contact (LastName='kumar', AccountId= ac1.Id );
        insert con1;
    }

}