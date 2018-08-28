public class soqsl {
    public void queryD()
    {
      //List <APPLE__C> appps = [SELECT NAME,ID,price__c FROM APPLE__C];
      // system.debug('Normal query for apple object is:'+appps);
      //List <APPLE__C> appps = [SELECT NAME,ID,price__c FROM APPLE__C WHERE price__C = 300];
      //system.debug('Normal query for apple object is:'+appps);
      //List <APPLE__C> appps = [SELECT NAME,ID,price__c FROM APPLE__C WHERE NAME_OF_THE_PRODUCT__c INCLUDES('IPHONE','IPAD') ];
      // INCLUDE ONLY USEFUL FOR MULTI PICKLIST...
      //List <APPLE__C> appps = [SELECT NAME,ID,price__c,NAME_OF_THE_PRODUCT__c FROM APPLE__C WHERE NAME LIKE 'IP%%'];
      // DIFFERENCE BETWEEN %%,_%, _,%,_%%?
      //List <APPLE__C> appps = [SELECT NAME,ID,price__c,NAME_OF_THE_PRODUCT__c FROM APPLE__C WHERE NAME IN('IPHONE5S','IPHONE8');
      //List <APPLE__C> appps = [SELECT NAME,ID,price__c,NAME_OF_THE_PRODUCT__c FROM APPLE__C WHERE NAME NOT IN('IPHONE5S','IPHONE8')];                         
       
      //List <APPLE__C> appps = [SELECT NAME,ID FROM tax__c WHERE (SELECT watch_rel__c FROM tax__c WHERE NAME='sony') NAME IN('IPHONE5S','IPHONE8')];
   
      //List<APPLE__C> appps=[SELECT NAME,ID,price__c,NAME_OF_THE_PRODUCT__c FROM APPLE__C WHERE price__c>300 ORDER BY (NAME) DESC BY price__c];  
      // ascending and descending
      //List<APPLE__C> appps = [SELECT NAME,price__c FROM APPLE__C LIMIT 3];  
      //List<APPLE__C> appps = [SELECT NAME,price__c FROM APPLE__C LIMIT 3 OFFSET 2];
      List<Account>appps = [SELECT Name,Phone FROM Account];
    }
    public void childParentRelation()
    {
     List<Contact>ctps= [SELECT Name,Account.Name,Phone,Account.Phone FROM Contact WHERE Account.phone='919966770970' AND Account.Name ='VIKKY REDDY'];
     System.debug(':'+ctps);  
     List <Source_User__c> sourceList = [SELECT Name,Fee__r.Moneyoffer__c FROM Source_User__c WHERE Fee__r.Moneyoffer__c > =1000];
        
        
     //List<Source_User__c> ctpc= [SELECT Name,id, source__r.Name FROM Source_User__c WHERE source__r.(Moneyoffer__c >=900000)];
     //How to get query record in child according to parent field in custom feild
     
    }
    public void cRmRelation()
    {
        list <Account> so = new list <Account>();
        Account r1= new Account (Name='Grand Mother');
        so.add(r1);
        insert so;
        //so.add(new account(Name='Check'));
        //insert so;*/
        
        //List<source__c> co = new List<source__c>();
       // source__c r1= new source__c (Name='Grand Mother');
       // source__c.add(r1);
        //insert co;
    	//co.add(new source__c(Name='grand father'));
        //insert co;
        
        // Note : There are two types available for insert records in custom object and standard objects
		
    	/*list <Account> so = [SELECT NAME,ID,Phone FROM Account where Phone='918772261661'];
        for(Account a: so)
        {
         a.Phone = '919966770970';  
            so.add(a);
        }
        update so;
        system.debug(':'+so);*/
        
        
        List <source__c> so1 = new List<source__c>();
        so1 =[select Name,id,tax__c,Money__c from source__c Where Money__c <50000];
        List<source__c> so2 = new list<source__c> ();
        for(source__c a:so1)
        {
            a.Money__c =49090;
             so2.add(a);
        }
        update so2;
        
        
        // I left money field of grand father empty while creating record when i update money field for record it's showing error. How to overcome that...
	 
    }
    

}