public class lTp1 
{

    public list <Account> nameEx {set;get;}
    public map<id,Account> acce = new map<id,Account>();
    
    public account del;
    public string industry_name {set;get;}
    public boolean tableon{set;get;}
    public string testrecid {set;get;}
    public id individualrecord{set;get;}
    public string namewant{set;get;}
    public string industryname {set;get;}
    public id str{get;set;}
    public string SelId {set;get;}
    
    
    public void nameCome()
    {
        tableon = true;
        nameEx = [select name,id,industry from account where industry = :industry_name];
        for(Account a: nameEx)
        {
         acce.put(a.id,a);
        }
           
        if(nameEx.size()<= 0)
        {
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'Please enter value'));
           
        }
       
         
    }
    
	public void deleteas() 
    {
    	if (acce.containsKey(individualrecord))
        {
            delete acce.get(individualrecord);
        }
    }
    public void editoption()
    {
       nameEx =[select id,Name,industry from Account where id=:selid];
        str = Apexpages.currentpage().getparameters().get('id');
       
    }
    
}