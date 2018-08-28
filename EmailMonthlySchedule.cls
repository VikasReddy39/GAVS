global class EmailMonthlySchedule implements Schedulable  
{
    global void execute (SchedulableContext sc)
    {
        EmailMonthly a = new EmailMonthly ();
        database.executeBatch(a);
    }
    

}