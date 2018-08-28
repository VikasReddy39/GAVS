global class examt 
{
    webservice static list<wrp> sendacc(string name,string phone, string city)
    {
        list<account>acc = [select name,id,phone,email__c,billingcity from account where name=:name and phone =:phone and billingcity =:city];
        wrplist = new list<wrp>();
        
        for(account a :acc)
        {
            wrpin = new wrp();
            wrpin.name = a.name;
            wrpin.phone = a.phone;
            wrpin.city = a.BillingCity;
            wrplist.add(wrpin);
            
        }
        return wrplist;
    }
    
    global static list<wrp> wrplist {set;get;}
    global static wrp wrpin {set;get;}
    global class wrp
    {
        webservice string name{set;get;}
        webservice string phone{set;get;}
        webservice string city{set;get;}
    }

}