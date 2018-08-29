 Global class demogit implements database.batchable <sobject>
{
	global database.querylocator start(database.batchablecontext bc)
	{
	string query ='select name,id from account';
	return database.getquerylocator(string);
	}
	global void execute(database.batchablecontext bc, list<account>acc)
	{	
		list<account>acceptt = new list<account>();
		for(account a:acc)
		{	
			if(a.email__c == null)
			{ a.email__c = a.name +'@gmail.com' ; acceptt.add(a);}
			update acceptt;
		}
	}
	global void finish(database.batchable context){}
}}
