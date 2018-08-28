global class LeadProcessor implements database.Batchable<sobject>
{
    global database.QueryLocator start(database.BatchableContext bc)
    {
        string query ='select lastname,id,leadsource from lead';
        return database.getQueryLocator(query);
    }
    
    global void execute (database.BatchableContext bc, list<lead>ledList)
    {
        list<lead>upda = new list<lead>();
        for(lead l:ledList)
        {
            l.LeadSource = 'Dreamforce';
            upda.add(l);
        }
       
        
        
            update upda;
        
        
        
        
    }
    
    global void finish (database.BatchableContext bc)
    {
        
    } 

}