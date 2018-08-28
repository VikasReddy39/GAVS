public class batchApexSchedule implements schedulable {
    public void execute(schedulablecontext sc)
    {
        scenario1 a = new scenario1();
        database.executeBatch(a, 2);
    }
    public static void schedulemethod()
    {
        batchApexSchedule schedulerun = new batchApexSchedule();
        string cron = '0 15 * * * ?';
        system.Schedule('scedulable',cron,schedulerun);
    }

}