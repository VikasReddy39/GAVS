public class DailyLeadProcessor implements schedulable
{
    public void execute(schedulablecontext sc)
    {
        list<lead> ledlist = new list<lead>();
        list<lead> ledlist1 = new list<lead>();
        ledlist = [select name,id,LeadSource from lead where LeadSource = null limit 200 ];
        for(lead l: ledlist)
        {
            l.LeadSource ='Dreamforce';
            ledlist1.add(l);
        }
        update ledlist1;
    }  

}