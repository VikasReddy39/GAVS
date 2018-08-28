@isTest
public class batchApexExapmleeTest {
    public static testmethod void testingmethodrun()
    {
     APPLE__c applelist = new APPLE__c();
        applelist.RecordTypeId = 'IPHONE';
        applelist.Name = 'IPHONE5';
        applelist.NAME_OF_THE_PRODUCT__c='IPHONE';
        insert applelist;
         
        test.startTest();
        batchApexExapmlee a= new batchApexExapmlee();
        database.executeBatch(a,1);
        test.stopTest();
        
        
        
    }

}