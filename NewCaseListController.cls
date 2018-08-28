public class NewCaseListController 
{
    
    
    public list<case> caselist{set;get;}
    public list<case> getNewCases ()
    {
        caselist = new list<case>();
        caselist =[select id,casenumber,status from case where status ='New'];
        return caselist;
    }

}