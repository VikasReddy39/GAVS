global class refelect 
{
    webservice static list<wrapperinner> getrecords(string searcj)
    {
        list<account>acc = new list<account>();
        acc=[select name,id,phone,email__c from account where name != :searcj limit 1000];
        wraplist = new list<wrapperinner>();
        for(account a:acc)
        {
            wpin = new wrapperinner();
            wpin.name = a.name;
            wpin.phone = a.phone;
            wpin.email = a.Email__c;
            wraplist.add(wpin);
        }
        
        return wraplist ;
    }
    global static wrapperinner wpin {set;get;}
    global static list<wrapperinner> wraplist{set;get;}
    global class wrapperinner
    {
        webservice string name{set;get;}
        webservice string phone{set;get;}
        webservice string email{set;get;}
    }
}