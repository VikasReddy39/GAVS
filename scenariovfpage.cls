public class scenariovfpage {
    public string Namegetter{set;get;}
    public list<Account> fetcher {set;get;}
    public void namesearcher()
    {
        fetcher = [select name,id,phone from Account where Name = :Namegetter];
    }

}