public class trigrollup2Helper 
{

    public void rollupmethodtrig(List<contact> triggernew)
    {
   set<Id> accIds = new set<Id>();
   Map<Id,Account> accMap = new Map<Id,Account>();
   Map<Id,List<contact>> conMap = new Map<Id,List<contact>>(); 
    for(contact con:triggernew)
    {
        accIds.add(con.AccountId);
    }
   List<contact> conList = [SELECT Id,Name,AccountId FROM contact WHERE AccountId IN :accIds];
   List<Account> accList = [SELECT Id,Name FROM Account WHERE Id IN :accIds]; 
    for(Account a:accList)
    {
        accMap.put(a.Id,a);
    }
    for(contact con:conList)
    {
        If(conMap.containsKey(con.AccountId))
        {
            conMap.get(con.AccountId).add(con);
        }
        else
        {
            List<contact> dummy = new List<contact>();
            dummy.add(con);
            conMap.put(con.AccountId,dummy);
        }
    }
    List <Account> accToUpdate = new List <Account> ();
    for(contact con:triggernew)
    {
        accMap.get(con.AccountId).Number_Child__c = conMap.get(con.AccountId).size();
        accToUpdate.add(accMap.get(con.AccountId));
    }
    Update accToUpdate;
    }
    
    
    public void contactdeletemethod(list<contact> triggerold)
    {
        set <id> ids = new Set<id>();
        Map<id,Account> accMap = new Map<id,Account>();
        Map<id,list<contact>> conMap = new Map<id,list<contact>>();
        for(contact c :triggerold)
        {
            ids.add(c.AccountId);
        }
        list<contact> conList = [select name,id,Accountid from contact where AccountId In:ids];
        List<account> accList = [select name,id from account where id In:ids];
        for(account a: accList)
        {
            accMap.put(a.Id, a);
        }
        for (contact c: conList)
        {
            if(conMap.containsKey(c.AccountId))
            {
                conMap.get(c.AccountId).add(c);
            }
            else
            {
                list<contact> dummylist = new list<contact>();
                dummylist.add(c);
                conMap.put(c.AccountId,dummylist);
            }
        }
            list<account> accupdate = new list<account> ();
            for(contact c : triggerold)
            {
                accMap.get(c.AccountId).Number_Child__c = conMap.get(c.AccountId).size();
                accupdate.add(accMap.get(c.AccountId));
            }
        
    }
    public void afterundeletemethod(list<contact> triggernew)
    {
        set<id> ids= new set<id>();
        Map<id,account> accMap = new Map<id,Account>();
        Map<id,List<contact>> conMap= new Map<id,List<contact>>();
        for(contact c: triggernew)
        {
            ids.add(c.AccountId);
        }
        list<account> accList= [select name,id from account where id in:ids];
        list<contact> conList = [select name,id,AccountId from contact where AccountId in:ids];
        for(account a:accList)
        {
            accMap.put(a.Id, a);
        }
        for(contact c : conList)
        {
            if(conMap.containsKey(c.AccountId))
            {
                conMap.get(c.AccountId).add(c);
            }
            else
            {
                list<contact> dummylist = new list< contact>();
                dummylist.add(c);
                conMap.put(c.AccountId, dummylist);
            }
            
        }
         List <Account> accToUpdate = new List <Account> ();
         for(contact c:triggernew)
            {
               accMap.get(c.AccountId).Number_Child__c = conMap.get(c.AccountId).size();
                accToUpdate.add(accMap.get(c.AccountId)); 
            }    
    }
    
    
    
}