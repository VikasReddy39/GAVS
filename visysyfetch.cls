global class visysyfetch 
{
    public string names{set;get;}
    public account account{set;get;}
    public list<account>acc {set;get;}
    public visysyfetch()
    {
        account = new account();
    }
    
    public void fetch()
    {
        PartnerOrgWsdl.soap a = new PartnerOrgWsdl.soap();
        PartnerOrgWsdl.LoginResult b = a.login('c.vikasreddy3@visys1.com', 'SruthiReddy@0309CEl3RZdnpyRXuxcgHHanIiJC');
        string sessionid  = b.sessionId;
        soapWebservice.SessionHeader_element c = new soapWebservice.SessionHeader_element();
        c.sessionId = sessionid;
        soapWebservice.webserviceclass d = new soapWebservice.webserviceclass();
        d.SessionHeader = c;
        list<soapWebservice.wrapclass> result = d.getaccounts(names);
        wrplist = new list<wrapclass>();
        for(soapWebservice.wrapclass w :result)
        {
            inst = new wrapclass();
            inst.name = w.name;
            inst.phone = w.phone;
            inst.email = w.email;
            inst.accountnumber = w.AccountNumber;
            inst.accountsource = w.AccountSource;
            inst.annualrevenue = w.AnnualRevenue;
            inst.cleanstatus = w.CleanStatus;
            inst.description = w.Description;
            inst.jigsaw = w.Jigsaw;
            inst.site = w.Site;
            wrplist.add(inst);
        }
        
    }
    
    public pagereference instaill()
        
    {
        acc = new list<account>();
        for(wrapclass w:wrplist)
        {
            if(w.selectedd == true)
            {
              account a1= new account();
                a1.Name = w.name;
                a1.AccountSource = w.accountsource;
                acc.add(a1);
            }
        }
        insert acc;
        pagereference pg = page.thanks;
        pg.setRedirect(false);
        return pg;
    }
    
    public list<wrapclass>wrplist{set;get;}
    public wrapclass inst{set;get;}
    public class wrapclass
    {
        public string name{set;get;}
        public string phone{set;get;}
        public string email{set;get;}
        public string AccountNumber {set;get;}
        public string Site {set;get;}
        public string AccountSource {set;get;}
        public decimal AnnualRevenue {set;get;}
        //webservice system.address BillingAddress {set;get;}
        public string CleanStatus {set;get;}
        public string Jigsaw {set;get;}
        public string Description {set;get;}
        public boolean selectedd{set;get;}
        public wrapclass()
        {
            selectedd = false;
        }
        
    }

}