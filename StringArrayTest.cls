public class StringArrayTest 
{
    public static list<string> generateStringArray(integer n)
        
    {
        list<string> myArray  = new list<string>();
        for(integer i=0;i<n;i++)
        {
           myArray .add('Test '+i); 
            System.debug(myArray[i]);

        }
        return myArray ;
    }

}