public class RandomContactFactory 
{
    public static List<Contact> generateRandomContacts (integer i,string lastnames)
    {
        list<contact>con = new list<contact>();
        contact c;
        for(integer j=0;j<i;j++)
        {
            c = new contact();
            c.LastName= lastNames+i; c.FirstName = lastnames +j;
            con.add(C);
        }
        system.debug(':'+con);
        return con;
        
    }

}