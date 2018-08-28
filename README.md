public class giting
{
  public void fromgit()
  {
    list<account>acc = new list<account>();
   list<account>accup = new list<account>();
    acc =[select name,description from account where description = null];
  for(account a:acc)
  {
    a.description ='from git';
  accup.add(a);
  }
  update accup;
  }
}
