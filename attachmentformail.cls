public class attachmentformail 
{
    public string names;
    public attachmentformail()
    {
        acca =[select name,id,phone,email__c from account where name=:names];
    }
    public list<account> acca{set;get;}

}