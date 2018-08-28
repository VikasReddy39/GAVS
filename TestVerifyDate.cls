@istest
public class TestVerifyDate  
{
    public static testmethod void method1()
    {
        date date1 = Date.newInstance(2016, 12, 9);
        date date2 = Date.newInstance(2016, 8, 9);
        VerifyDate.CheckDates(date1, date2);
    }
    
    public static testmethod void method2()
    {
        date date1 = Date.newInstance(2015, 12, 9);
        date date2 = Date.newInstance(2016, 8, 9);
        VerifyDate.CheckDates(date1, date2);
    }
    
    public static testmethod void method3()
    {
        date date1 = Date.newInstance(2015, 12, 9);
        date date2 = Date.newInstance(2015, 12, 9);
        VerifyDate.CheckDates(date1, date2);
    }

}