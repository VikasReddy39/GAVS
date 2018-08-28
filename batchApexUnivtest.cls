@isTest
public class batchApexUnivtest {
    public static testmethod void testerrun()
    {
        University__c unirec = new University__c();
        unirec.Name = 'JNTUK';
        unirec.University_Email__c = 'abofg@gmail.com';
        insert unirec;
        
         University__c emailRec = new University__c();
        emailRec.Name = 'JNTUA';
        emailRec.University_Email__c = 'abof@gmail.com';
        insert emailRec;
        
        COLLEGE__C collegerecord = new COLLEGE__C ();
        collegerecord.University_Under__c = unirec.id;
        collegerecord.Name = 'dummyclg';
        collegerecord.University_Applicable__c = true;
        collegerecord.EMAIL__c ='ravibhopra@eng.com';
        insert collegerecord;
        
       
        
        COLLEGE__C collegerecord1 = new COLLEGE__C();
        collegerecord1.University_Under__c = emailRec.id;
        collegerecord1.Name = 'dummycdf';
        collegerecord1.University_Applicable__c = true;
        //collegerecord1.EMAIL__c ='ravibhopra@eng.com';
        insert collegerecord1;
        
       test.startTest(); 
       batchApexUniv r = new batchApexUniv();
	   database.executeBatch(r,2);
        test.stopTest();
    }
    

}