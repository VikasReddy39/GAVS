global class ListToBatch implements database.Batchable <sobject>
{
    global list<account>acc;
    global ListToBatch(list<account>acc1)
    {
        acc = acc1;
    }
    
    global database.QueryLocator start(database.BatchableContext bc)
    {
       string query ='select name,id from account ';
        return database.getQueryLocator(query);
    }
    global void execute (database.BatchableContext bc, list<account>a)
    {
        list<account>aa = new List<account> ();
        for(account ak:acc)
        {
            ak.phone = '34566';
            aa.add(ak);
        }
        update aa;
    }
    global void finish(database.BatchableContext bc)
    {
        
    }

}