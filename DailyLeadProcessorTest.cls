@istest
public class DailyLeadProcessorTest 
{
    public static String CRON_EXP = '0 0 0 15 3 ? 2022';
    public static testmethod void method1()
    {
        list<lead> ll = new list<lead>();
        for(integer i=0;i<200;i++)
        {
            lead k = new lead();
            k.LastName='test'+i;
            k.Company ='company'+i;
            k.Status ='Open - Not Contacted';
            ll.add(k);
        }
        insert ll;
        test.startTest();
        String jobId = System.schedule('ScheduledApexTest',CRON_EXP,new DailyLeadProcessor()); 
        test.stopTest();
    }

}