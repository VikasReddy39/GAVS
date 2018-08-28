global class getrecordsfromvysisrest 
{
    public static string accname{set;get;}
    public final string clientId='3MVG9d8..z.hDcPLooWCl3Yu9uzfN_LdawCBmW7gRgDHLHQrfewjhXz5ODlCfKvZQXWslzDGwQyrJE2eF2BcQ';
    public final string secret ='1600404586293277297';
    public final string username ='c.vikasreddy3@visys.com';
    public final string password ='SruthiReddy@0309';
    
    public class deserializeResponse
    {
       public string accesstoken;
        public string id;
    }
    
    public string oauth(getrecordsfromvysisrest acc1)
    {
        http http = new http();
        httprequest req = new httprequest();
        req.setMethod('POST');
        req.setEndpoint('https://login.salesforce.com/services/oauth2/token');
        req.setBody('grant_type = password &client_id=' + clientId +
            '&client_secret=' + Secret +
            '&username='+ username +
            '&password=' + password);
        //http http = new http();
        HTTPResponse  res = http.send(req);
        deserializeResponse res1 = (deserializeResponse)JSON.deserialize(res.getbody(),deserializeResponse.class);
      return res1.accesstoken ; 
    //    wrplistB = new List<wrapperclassB>();
       
    }
    @future(callout = true)
    public static void listaccounts()
    {
        wrplistB = new list<wrapperclassB>();
       getrecordsfromvysisrest acc2 = new getrecordsfromvysisrest();
        string accesstoken = acc2.oauth(acc2);
         
         if(accessToken != null){
           String endPoint = 'https://ap5.salesforce.com/services/apexrest/vaccounts?names=' +accname;
           //String jsonstr = '{"accId" : "' + accId+ '"}';
           Http h2 = new Http();
           HttpRequest req1 = new HttpRequest();
           req1.setHeader('Authorization','Bearer ' +accessToken);
           req1.setHeader('Content-Type','application/json');
           req1.setHeader('accept','application/json');
           //req1.setBody(jsonstr);
           req1.setMethod('GET');
           req1.setEndpoint(endPoint);
           HttpResponse res1 = h2.send(req1);
           String trimmedResponse = res1.getBody().unescapeCsv().remove('\\');
 
        list<string> names = new list<string>();
         JSONParser parser1 = JSON.createParser(req1.getBody());
        while (parser1.nextToken() != null) 
        {
            if ((parser1.getCurrentToken() == JSONToken.FIELD_NAME) && (parser1.getText() == 'name')) {
                // Get the value.
                parser1.nextToken();
                names.add(parser1.getText());
               
            }
        }
        
        list<string> phones = new list<string>();
         JSONParser parser2 = JSON.createParser(req1.getBody());
        while (parser2.nextToken() != null) 
        {
            if ((parser1.getCurrentToken() == JSONToken.FIELD_NAME) && (parser2.getText() == 'phone')) {
                // Get the value.
                parser2.nextToken();
                phones.add(parser1.getText());
               
            }
        }
        
        
        
        for(integer i=0;i<names.size();i++)
        {
            wrpinstB = new wrapperclassB();
            wrpinstB.name = names[i];
            wrpinstB.phone =phones[i];
            //wrpinstB.email = email[i];
            wrpinstB.checkboxxx = false;
           
                wrplistB.add(wrpinstB);
        }
             //return wrplistB;
        
    }
    //return null;
    }    
    public static wrapperclassB wrpinstB{set;get;}
    public static list<wrapperclassB>wrplistB{set;get;}
    public class wrapperclassB
    {
      public string name{set;get;}
       // public string email{set;get;}
        public string phone{set;get;}
        public boolean checkboxxx {set;get;}  
    }

}