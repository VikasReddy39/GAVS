public class SCMPartnerwdsl
{
    public account aa{set;get;}
    public SCMPartnerwdsl()
    {
        aa= new account();
    }
    public pagereference save()
    {
        PartnerOrgWsdl.Soap a = new PartnerOrgWsdl.Soap();
        PartnerOrgWsdl.LoginResult b = a.login('c.vikasreddy3@visys1.com', 'SruthiReddy@0309B4nao3cDbMnWnOIkxoz14KsH');
        string sessionid = b.sessionId;
        
        ClassScm.SCMWebservice c = new ClassScm.SCMWebservice();
        ClassScm.SessionHeader_element d = new ClassScm.SessionHeader_element();
        d.sessionId= sessionid;
        c.SessionHeader = d;
        //c.getrecords(aa.name);
        c.getmethod(aa.name, aa.phone, aa.Email__c);
        insert aa;
        return null;
    }

}