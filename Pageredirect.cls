public class Pageredirect 
{
    public account accounts{set;get;}
    public boolean editable{set;get;}
    public string word {set;get;}
    Public pageredirect()
    {
      string id = apexpages.currentPage().getparameters().get('id'); 
        if(id==null)
        {
            accounts = new account();
            word ='saved successfully';
        }
        editable = false;
    }
    public pagereference next()
    {
        if(accounts.Phone==null)
        {
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'Please enter value'));
        }
        pageReference pg = page.page2;
        pg.setRedirect(false);
        editable = true;
        return pg;
                
    }
    public pagereference saving()
    {
        
        try
        {
            
            insert accounts;
           
        }
        catch(exception e)
        {
            system.debug(':'+e);
        }
       
           string id = apexpages.currentPage().getparameters().get('id');
           if(id!=null){
        pagereference pg= page.thanks;
        pg.setRedirect(false);
            return pg;}
        else 
        {
            return null;
        }
    }
    public pagereference backing()
    {
      pageReference pg = page.page1;
        pg.setRedirect(false);
        return pg;  
    }
    
    
    
    

}