public class sampleBulk {
    public void display() 
    {
        List <APPLE__C> bulkApple = new List <APPLE__C> ();
        bulkApple = [SELECT NAME,ID,RAM__C FROM APPLE__C WHERE NAME='IPAD'];
        List <APPLE__C> bulkDone = new List <APPLE__C> ();
        for(APPLE__C s: bulkApple)
        {
            s.NAME='CHANGED IPAD';
            bulkDone.add(s);
        }
        update bulkDone;
    }
    
}