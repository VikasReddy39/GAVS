@istest
public with sharing class countchildsbookTest 
{
	
	public static testmethod void method2()
	{
		account a= new account();
		a.name = 'test9';
        a.Number_Child__c=0;
		insert a;
		contact c = new contact();
		c.lastname = a.name;
		c.accountid = a.id;
		insert c;
        
    }
    
    

        
    
    
}