public with sharing class wrapperclassrelated 
{
	public list<account>acc{set;get;}
	public list<contact>con{set;get;}
	public set<id> ids{set;get;}
	public wrapperclassrelated()
	{
		
		if(wrplist == null)
		{
		wrplist = new list<wrapperclass>();
			for(account a:[select name,id,phone, (select name,id,phone from contacts) from account limit 1000])
			{
				//wrapinst = new wrapperclass(a);
				wrplist.add(new wrapperclass(a));
					
			}
		}
	}
	public void selection()
	{
		
		acc = new list<account>();
		ids = new set<id>();
		con = new list<contact>();
		for(wrapperclass w:wrplist)
		{
			if(w.selected == true)
			{
				acc.add(w.a);
				for(account a:acc)
				{
					ids.add(a.id);
				}
			}
		}
		con =[select name ,id ,phone from contact where accountid in:ids];
	}
	public list<wrapperclass>wrplist {set;get;}
	public wrapperclass wrapinst{set;get;}
	public class wrapperclass
	{
		public account a{set;get;}
		public boolean selected{set;get;}
		public wrapperclass(account a12)
		{
			a = a12;
			selected = false;
		}
	}
    
}