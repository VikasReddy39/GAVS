@isTest
public class TriggerFiringTest {
    public static testmethod void Accountcheck()
    {
        Account a = new account(Name='Firing',Industry='banking', Trigger_Checked__c = False);
        insert a;
    }

}