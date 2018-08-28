public class emailtouncheck 
{
    public void uncheck()
    {
        list<account>acc = new list<account>();
        list<account>accup = new list<account>();
        acc = [select name,id,phone,email__c,Monthly_Email__c from account];
        for(account a:acc)
        {
            if(a.Monthly_Email__c == true)
            {
                a.Monthly_Email__c = false;
                accup.add(a);
            }
        }
        update accup;
    }

}