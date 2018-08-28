@isTest
public class scenario3Test 
{
    public static testmethod void scenario3test()
    {
        Opportunity opp = new Opportunity(Name='cloudcomputing',CloseDate= Date.newInstance(2960, 2, 17), StageName='Qualification');
        insert opp;
        Contact con=new Contact(LastName='Manhatten',Create_opportunity__c=true,Opportunity_Contact__c = opp.Id,Department='Sales');
        insert con;
        
    }
    

}