public class readonlystandard 
{
    public flipkart__c flipkart{set;get;}
    public boolean editable{set;get;}
    public readonlystandard()
    {
        editable = false;
        
        string id = apexpages.currentPage().getparameters().get('id');
        LIST<FLIPKART__C> FL =[select name,id from flipkart__c where id =:id];
        if(id==null)
        {
            flipkart = new flipkart__C();
        }
        else 
        {
            pagereference pg = page.thanks;
        }
    }
    
    public pagereference saving()
    {
        try
        {
            upsert flipkart;}
        catch(exception e)
        {
            
        }
        editable= true;
        return null;
        
    }

}