public class forcedatcomstyle 
{
	public static void letstry()
	{
		list<account>acc = new list<account>();
		list<account>updateacc = new list<account>();
		acc = [select name,id,phone from account where phone = null];
		for(account a:acc)
		{
			a.phone ='12345567';
			updateacc.add(a);
		}
		update updateacc;
		
	}
    
}