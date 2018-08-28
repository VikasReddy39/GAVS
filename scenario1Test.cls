@isTest
public class scenario1Test {
     static testmethod void scenariotesting()
    {
        Contact contactrecord = new Contact ();
        contactrecord.LastName = 'getit';
        insert contactrecord;
        
        Contact contactrecorder = new Contact ();
        contactrecorder.LastName = 'getitout';
        contactrecorder.Email = 'reyyui@gmail.com';
        insert contactrecorder;
        
        
        source__c sourcerecords = new source__c();
        sourcerecords.Contact__c = contactrecord.Id;
        sourcerecords.Name = 'didyou';
        sourcerecords.Shipped__c= true;
        sourcerecords.Email__c='record@gmail.com';
        insert sourcerecords;
        
        
        source__c sourcerecorder = new source__c();
        sourcerecorder.Contact__c = contactrecorder.Id;
        sourcerecorder.Name = 'will you';
        sourcerecorder.Shipped__c = true;
        insert sourcerecorder;
        
        test.startTest();
        scenario21 s = new scenario21();
        database.executeBatch(s,1);
        test.stopTest();
        
        
    }  

}