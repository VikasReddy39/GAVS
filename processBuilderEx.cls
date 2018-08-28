public class processBuilderEx {
@invocablemethod
    public static void display(List<ID>ids){
        List<college__c> colList = [SELECT Id,Name,EMAIL__C FROM college__c WHERE Id in:ids];
        List<college__c> colBulk = new List<college__c>();
        for(college__c col : colList)
        {
            col.COST__c = 20000;
            colBulk.add(col);
            
        }
        update colBulk;
    }
}