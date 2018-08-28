public class sqldml {
    public void exam(){
        List <tax__c> examTest = new List <tax__c> ();
        tax__c taxes = new tax__c (NAME='custom tax for mac', apple__c='a0C6F00000dZc6W');
        examTest.add(taxes);
        tax__c taxes1 = new tax__c (NAME='custom tax for mac90', apple__c='a0C6F00000dZc6W');
        examTest.add(taxes1);
        examTest.add(new tax__c(NAME='VAT', apple__c='a0C6F00000dZc6W'));
        INSERT examTest;
        examTest=[SELECT NAME,ID FROM tax__c WHERE NAME='VAT'];
        FOR(tax__c a: examTest){
            a.NAME='s we have';
            update a;
        }
    }
}