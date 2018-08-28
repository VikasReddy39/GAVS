@istest
public class sqdmltest 
{
    public static testmethod void imk()
    {
        list<apple__c> app = new list<apple__c>();
        apple__c j = new apple__c();
        j.Name='test';
        j.NAME_OF_THE_PRODUCT__c ='MAC';
        insert j;
        List <tax__c> examTest = new List <tax__c> ();
         tax__c nk = new tax__c();
        nk.Name = 'VAT';
        nk.apple__c = j.Id;
        insert nk;
        system.debug(':'+nk);
        for(integer i=0;i<=900;i++)
        {
            tax__c n = new tax__c();
            n.Name ='test'+i;
            examtest.add(n);
        }
       
        insert examtest;
        system.debug(':'+examtest);
        
        sqldml p = new sqldml();
        p.exam();
        
        
    }

}