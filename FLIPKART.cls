global class FLIPKART implements database.Batchable<sobject>,database.stateful
{
	global database.QueryLocator start(database.batchablecontext bc)
	{
		string query ='select name,id,Customer_phone__c from flipkart__c';
		return database.getquerylocator(query);
	}
	
	global void execute(database.BatchableContext bc, list<flipkart__c>flip)
	{
		list <flipkart__c> updateflip = new list<flipkart__c>();
		for(flipkart__c c:flip)
		{
			if(c.Customer_phone__c == null)
			{
				c.Customer_phone__c ='9000196375';
				updateflip.add(c);
			}
		} 
		try{
		update updateflip; 
		}
		catch(dmlexception de)
		{
			system.debug(':'+de);
			}
	}
	
	global void finish(database.batchablecontext bc){}

}