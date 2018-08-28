global with sharing class queableexample implements queueable
{
    global void execute(queueablecontext qc)
    {
        account a= new account();
        a.name ='queueable1';
        a.BillingPostalCode ='890765';
        insert a;
        queueable2 aa = new queueable2();
        system.enqueueJob(aa);
        system.debug(':'+a);
    }

}