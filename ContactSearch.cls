public class ContactSearch 
{
    public static list<contact> searchForContacts (string name, string code)
        
    {
        list<contact> con = new list<contact>();
        
        con = [select LastName,MailingPostalCode,id from contact where LastName =:name and MailingPostalCode =:code];
        return con;
        
    }

}