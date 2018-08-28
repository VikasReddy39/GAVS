public class newmapforvf {
    public map <string, string> countrycurrency;
    public list<string> result = new list <string>();
    public set<string> result1 = new set<string>();
    public void displaymethod()
    {
        countrycurrency = new map<string,string>();
        countrycurrency.put('USA','DOLLAR');
        countrycurrency.put('AUS','DOLLAR');
        countrycurrency.put('INDIA','Ruppe');
        countrycurrency.put('china','yuan');
        countrycurrency.put('PAK','ruppe');
    }
    public void getkeys()
    {
        
        result1 = countrycurrency.keySet();
    }
    public void valuekeys()
    {
        
         result = countrycurrency.values();
    }

}