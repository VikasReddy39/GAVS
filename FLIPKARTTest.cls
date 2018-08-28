@istest(seealldata = false)
public class FLIPKARTTest 
{
	public static testmethod void method1()
	{
		list <flipkart__c> newflip = new list<flipkart__c>();
		integer i=0;
		flipkart__c v ;
		for(i=0;i<130;i++)
		{
			v = new flipkart__c();
			v.name ='test'+i;
			newflip.add(v);
		}
		
		test.startTest();
		insert newflip;
		flipkart a = new flipkart();
		database.executeBatch(a); test.stoptest();
	}
    
}