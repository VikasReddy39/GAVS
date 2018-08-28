global class accountsoap
{
          webservice static string accountdemosoap(string name, string phone , string email)
{

account a = new account();
a.name = name;
a.phone = phone;
a.email__c = email;
//a.billinigcity = billingcity;

insert a;

if(a.id!= null)
{

return 'success';

}
else { return 'failure';}

} 


}