public class Contcatdelete {
    public void deletion()
    {
        list<contact>conList = new List<contact>();
        conList =[select lastname,id from contact where name ='Kill'];
        system.debug(+conList);
        delete conList;
    }

}