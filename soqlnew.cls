public class soqlnew {
    public void dmla(){
       List <watch__c> appleList = new List <watch__c> ();
        
        
       //applelist = [SELECT NAME,ID,INCH__c FROM APPLE__C WHERE INCH__c='15INCH'AND INTERNAL_MEMORY__c ='1TB' AND NAME_OF_THE_PRODUCT__c='MAC'];
       watch__c ad = new watch__c (Name='TOMM01',watch_name__c = 'TOMM01',apple_2__c='a0C6F00000dZVyF');
        appleList.add(ad);
        watch__c ad1 = new watch__c (Name='TOMMY09',watch_name__c = 'TOMM09',apple_2__c='a0C6F00000dZVyF');
        appleList.add(ad1);
        INSERT appleList;
        //system.debug('FILES ARE :'+applelist);
            }
}