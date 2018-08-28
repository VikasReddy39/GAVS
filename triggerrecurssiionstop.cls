public class triggerrecurssiionstop 
{
    public static boolean run=true;
    
    public static boolean method()
    {
        if(run)
        {
            run =false;
            return run;
        }
        else
        {
            return run;
            
        }
    }

}