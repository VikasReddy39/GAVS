public class bulkfy 
{
    public void inserting150()
    {
       account acc = new account();
        for (integer i=0;i<139;i++)
        {
            acc.Name = 'apexbulk'+i;
            insert acc;
        }
    }
}