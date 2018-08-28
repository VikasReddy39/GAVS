@restresource(urlmapping = '/insertaccountop/*')
global class restapip 
{
    @httppatch
    global static list<account> insertacc(string names)
    {
        account a = new account();
        a.name = names;
        list<account>acc = new list<account>();
        acc.add(a);
       // a.Description = descript;
        try
        {
            insert a;
            return acc;
        }
        catch (exception e)
        {
            system.debug(':'+e.getCause()
                        +e.getLineNumber());
            return null;
        }
    }

}