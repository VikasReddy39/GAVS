public class MapPractise {
public void display()
{
    List < Account > accList = [SELECT Id,name,Industry FROM Account];
    system.debug('$$$$$'+accList);
    //need to create a map where Id as a key and complete record as a value
    //need to create a map where id as a key and industry as  a value
    Map < Id,Account > accMap = new Map < Id,Account >();
    Map < Id,String > accidIndustryMap = new Map < Id,String >();
    map<id,map<id,string>> addvanced ;
    for(Account a : accList)
    {
       accMap.put(a.Id, a);
        accidIndustryMap.put(a.Id, a.Industry);
    }
    update accmap.values();
    system.debug('accMap&&&'+accMap);
    system.debug('accidIndustryMap****'+accidIndustryMap);
}
}