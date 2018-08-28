global class AccountRecordsFetchforTargetSoap 
{
    webservice static list<wrapperfoo> getrecords()
    {
        list<account>acc = new list<account>();
        acc = [select name,id,phone,description,email__c from account limit 100];
        wraplisting = new list<wrapperfoo>();
        for(account a :acc)
        {
            wrapinst = new wrapperfoo();
            wrapinst.name = a.name;
            wrapinst.phone = a.Phone;
            wrapinst.email = a.Email__c;
            wrapinst.description = a.Description;
            wraplisting.add(wrapinst);
            
        }
        return wraplisting;
    }
    
    
    global static list<wrapperfoo> wraplisting {set;get;}
    global static wrapperfoo wrapinst {set;get;}
    global class wrapperfoo
    {
        webservice string name{set;get;}
        webservice string phone{set;get;}
        webservice string email{set;get;}
        webservice string description{set;get;}
    }
    

}