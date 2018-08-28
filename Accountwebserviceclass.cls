global class Accountwebserviceclass 
{
    webservice static list<wrapperwebserviceclass> Accountwebservicemethod(string searchname)
    {
		if(searchname != null)
        {        
        list<account> accountslist = new list<account>();
        wrapperclasslist = new list<wrapperwebserviceclass>();
        accountslist =[select name,id,phone,email__C from account where name !=:searchname LIMIT 999];
        for(account a: accountslist)
        {
            instanceofwrapper = new wrapperwebserviceclass();
            instanceofwrapper.name = a.name;
            instanceofwrapper.phone = a.phone;
            instanceofwrapper.email = a.email__c;
            wrapperclasslist.add(instanceofwrapper);
        }
            
        }
        return wrapperclasslist;
        
    }
    
    
    global static wrapperwebserviceclass instanceofwrapper{set;get;}
    global static list<wrapperwebserviceclass> wrapperclasslist{set;get;}
    global class wrapperwebserviceclass
    {
        webservice string name{set;get;}
        webservice string phone{set;get;}
        webservice string email{set;get;}
    }

}