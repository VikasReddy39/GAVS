@istest
public with sharing class NameDupzTest 
{
	public static testmethod void letstest()
	{
		LIST<flipkart__c> flip = new list<flipkart__C>();
		flipkart__c o; flipkart__c o1;
		for(integer i=0;i<890;i++)
		{
			o = new flipkart__c();
			o.name ='test'+i;
			flip.add(o);
			
		}
		insert flip;
		try{
		o1 = new flipkart__c();
		o1.name ='test1';
		insert o1;
		}
		catch(exception e){}
		 //test.stoptest();
	}	
	
    
}