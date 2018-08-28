global class accsearchfortarget {
    
webservice static list<account> search(string name) 
{
list<account> acc = new list<account>();
acc =[select name,phone,email__c from account where name = :name];
return acc; 
}

}