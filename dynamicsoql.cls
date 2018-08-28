public class dynamicsoql {

    public String accName{set;get;}
    public string accIndustry{set;get;}
    public List<Account> accList{set;get;}
    public void display()
    {
        accList = [SELECT Name,Industry FROM Account WHERE Name =:accName and Industry = :accIndustry];
        String query = 'SELECT Name,Industry FROM Account';
        If((accName != Null && accName != '') && (accIndustry != Null && accIndustry !=''))
        {
            query = query + 'WHERE Name = \''+accName+'\' and Industry = \''+accIndustry+'\'';
            system.debug('Value in 1st query :'+query);
        }
        else if(accName != Null && accName !='')
        {
            query = query +'WHERE Name = \''+accName+'\'';
            system.debug('Value in 2nd query :'+query);
        }
        else if (accIndustry != Null && accName != '')
        {
            query = query + 'WHERE Industry = \''+accIndustry+'\'';
            system.debug('Value in 3rd query :'+query);
        }
        accList = database.query(query);
    }
}