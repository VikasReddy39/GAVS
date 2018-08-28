@istest
public class baTchApexWorktest 
{
    public static testmethod void testing1()
    {
     list <source__c> coo1= new list<source__c>();
        for(integer a=0;a<1000;a++)
        {
            source__c c = new source__C();
            c.Name ='test'+a;
            c.Money__c = 908768;
            coo1.add(c);
        }
        insert coo1;
        source__c ca = new source__C(name = 'get',money__c=9 ); insert ca;
        //list<source__C>up = [select name,money__C from source__C where money__C<89000];
        test.startTest();
        baTchApexWork a = new baTchApexWork();
        database.executeBatch(a);
        test.stopTest();

    }

}