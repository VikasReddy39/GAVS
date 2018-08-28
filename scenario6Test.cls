@isTest
public class scenario6Test 
{
    public static testmethod void contactdummy()
    {
        Contact con = new Contact();
        con.LastName ='vikky';
        insert con;
        
        List <contact> cas = [select lastname,id from contact where id =:con.Id];
        delete cas;
    }

}