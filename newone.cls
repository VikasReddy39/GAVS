public class newone {
    public void test()
    {
        list <integer> roll_no = new list <integer>();
        integer a=12;
        integer b=23;
        integer c=45;
        roll_no.add(a);
        roll_no.add(b);
        roll_no.add(c);
        system.debug(+roll_no);
        list <integer> numbere= new list<integer>();
        numbere.addAll(roll_no);
        system.debug(+numbere);
        system.debug(+roll_no.size());
        /*numbere.clear();*/
        system.debug(+numbere);
        numbere.sort();
        system.debug(+numbere);
    }
}