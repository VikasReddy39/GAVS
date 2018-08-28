public class c2pDml {
public void display()
{
    List <source_user__c> c2p = new List <source_user__c>();
    source_user__c s = new source_user__c(name='relatives',Fee__c='a0F6F00000oyn4m');
    c2p.add(s);
    Insert c2p;
}
}