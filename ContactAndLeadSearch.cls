public class ContactAndLeadSearch 
{
    public static  List<List< SObject>> searchContactsAndLeads (string name)
    {
         List<List< SObject>> cnl = new  List<List< SObject>>();
        cnl = [FIND 'smith' IN ALL FIELDS RETURNING contact(LastName),lead(LastName)];
        return cnl;
    }

}