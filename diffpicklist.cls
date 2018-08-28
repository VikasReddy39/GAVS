public class diffpicklist {
    public selectoption[] menuname {set;get;}
    public list<Account> querylist {set;get;}
    public diffpicklist()
    {
        selectoption menu1 = new selectoption('Starter1','Chicken');
        selectoption menu2 = new selectoption('Starter01','Mutton');
        selectoption menu3 = new selectoption('Starter001','Fish');
        menuname = new selectoption [] {menu1,menu2,menu3};
             querylist= [select name,id,phone from account];
    }

}