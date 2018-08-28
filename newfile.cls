public class newfile {
    public void display()
    {
        list<APPLE__C> appllist=[SELECT NAME,ID,price__c,NAME_OF_THE_PRODUCT__c FROM APPLE__c WHERE NAME_OF_THE_PRODUCT__c ='IPHONE'];
        system.debug(':'+appllist);
    }

}