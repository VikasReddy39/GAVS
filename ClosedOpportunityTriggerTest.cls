@istest
public class ClosedOpportunityTriggerTest 
{
    public static testmethod void method1()
    {
        list<opportunity> opp = new list<opportunity>();
        opportunity o ;
        for(integer i=0;i<200;i++)
        {
            o = new opportunity();
            o.Name = 'test'+i;
            o.StageName ='Closed Won';
            opp.add(o);
        }
        insert o;
    }

}