public class dbrecords 
{
    public string name{set;get;}
        public string phone{set;get;}
    public account account{set;get;}
    public dbrecords()
    {
        account = new account();
    }
    
    public void fetching()
    {
        queryvisys.soap a = new queryvisys.soap();
         queryvisys.LoginResult b = a.login('c.vikasreddy3@visys1.com','SruthiReddy@0309CEl3RZdnpyRXuxcgHHanIiJC');
        string sessionid = b.sessionId;
        
        classvisys2.SessionHeader_element c = new classvisys2.SessionHeader_element();
        c.sessionId = sessionid;
         classvisys2.webserviceclassfordb d = new classvisys2.webserviceclassfordb();
        d.SessionHeader = c;
         list<classvisys2.wrapperclass> result = d.searching(name,phone);
        wrplist = new list<wrapclass>();
        try{
        for(classvisys2.wrapperclass w:result)
        {
            wrpinst = new wrapclass();
            wrpinst.name = w.name;
            wrpinst.phone = w.phone;
            wrplist.add(wrpinst);
            
        }
        }
        catch(exception E)
        {
            system.debug(':'+E);
        }
        
        
    }
    
    public list<wrapclass>wrplist{set;get;}
    public wrapclass wrpinst {set;get;}
    public class wrapclass
    {
        public string name {set;get;}
        public string phone {set;get;}
       // public account a{set;get;}
        public boolean selected{set;get;}
        
        
    }

}