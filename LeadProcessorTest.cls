@istest
public class LeadProcessorTest 
{
    public static testmethod void method1()
    {
        list<lead> leadinsert = new list<lead>();
        for(integer i=0;i<200;i++)
        {
            lead l = new lead();
            l.LastName ='test'+i;
            l.LeadSource ='Other';
            l.Company ='Flex'+i;
            l.Status ='Open - Not Contacted';
            leadinsert.add(l);
        }
        
            insert leadinsert;
        
            
        
        

        test.startTest();
        LeadProcessor a = new LeadProcessor();
            database.executeBatch(a);
        
        test.stopTest();
    }

}