public class sampleMap {
    public void display(){
        List <APPLE__c> appList =[SELECT Name,id FROM APPLE__c];
        Map <id,APPLE__c> appMap = new Map <id,APPLE__c> ();
        Map <id,String> appMap1 = new Map <id,String> ();
        
        for(APPLE__C a : appList)
        {
            appMap.put(a.id,a);
            appMap1.put(a.id,a.name);
        }
        //system.debug('Map1 records are:'+appMap);
        //system.debug('Map2 records are:'+appMap1);
        system.debug('Map2 get id 2 records are:'+appMap1.get('a0C6F00000dZ2ErUAK'));
    }
}