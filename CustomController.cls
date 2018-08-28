public with sharing class CustomController 
{
	public account ac{set;get;}
	public list<account>acc{set;get;}
	public string names{set;get;}
	public string phone{set;get;}
	public CustomController()
	{
		ac = new account();
	}
	
	public void searching()
	{
		acc = new list<account>();
		acc = [select name,id,phone,billingcity from account where name =:names and phone =:phone];
	}
    
}