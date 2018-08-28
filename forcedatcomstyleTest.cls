@isTest
public class forcedatcomstyleTest 
{
	public static testmethod void method1()
	{
		list<account>accin = new list<account>();
		account a;
		integer i;
		for(i=0;i<290;i++)
		{
			a= new account();
			a.name = 'test'+i;
			accin.add(a);
		}
		insert accin;
		forcedatcomstyle.letstry();
	}
    
}