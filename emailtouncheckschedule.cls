global class emailtouncheckschedule implements schedulable
{
    global void execute (schedulablecontext sc)
    {
        emailtouncheck a = new emailtouncheck();
        a.uncheck();
    }

}