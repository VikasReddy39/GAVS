public class listofrecords 
{
    public void sent(){
    list<account> accL = new list<account>();
    string names= 'vikky';
        accL = [select name,id,phone from account where name ='1797'];
        ListToBatch j = new ListToBatch(accL);
        database.executeBatch(j,1);
    }
    

}