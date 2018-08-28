global class restapexcallin 
{
    public string name{set;get;}
    public list<account>accList1{set;get;}
    public string clientid ='3MVG9d8..z.hDcPLooWCl3Yu9u3vAq1ksTPBW9h4hfMmMesVBb5r1HNf1wJFibC.OZbeDG2d1YpSPELP19hv_';
    public string secretnumber ='5090604729246590451';
    public string username='c.vikasreddy3@visys.com';
    public string password='SruthiReddy@0309';
    
    public class deserializeResponse
   {
      public String id;
      public String access_token;
   }
    
    
    public string outh2(restapexcallin re1)
    {
        string body ='grant_type=password+client_id='+clientid+'&client_secert='+secretnumber+'&username='+username+'';
        http http = new http();
        httprequest req = new httprequest();
        httpresponse res = new httpresponse();
        req.setBody('body');
        req.setMethod('POST');
        req.setEndpoint('https://ap5.salesforce.com/services/oauth2/token');
        res = http.send(req);
        deserializeResponse resp1 = (deserializeResponse)JSON.deserialize(res.getbody(),deserializeResponse.class);
        return resp1.access_token;            
    }
    
    global static void getconr(string names)
    {
        
        restapexcallin re2 = new restapexcallin();
        string accesstoken;
        accesstoken = re2.outh2(re2);
        list<account>accList1 = new list<account>();
        if(accesstoken!=null)
        {
            http http2 = new http();
            string endpoint ='https://ap5.salesforce.com/sevices/apexrest/accFetch/'+names;
            httprequest req1 = new httprequest();
            req1.setEndpoint('endpoint');
            req1.setMethod('GET');
            req1.setHeader('Authorization','Bearer'+accesstoken);
            req1.setHeader('Content-Type','application/json');
            req1.setHeader('accept','application/json');
            httpresponse res2 = http2.send(req1);
            String trimmedResponse = res2.getBody().unescapeCsv().remove('\\');
            
            JSONParser parser = JSON.createParser(res2.getBody());
           List<string> accname = new list<string>();
            integer count = accname.size();
            
            while (parser.nextToken() != null) 
            {
                if((parser.getCurrentToken() == JSONToken.FIELD_NAME) )
                {
                    
                    if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'name')) 
                    {
                    // Get the value.
                    parser.nextToken();
                    // Compute the grand total price for all invoices.
                    accname.add(parser.getText());
                }
                 
                }
            }
        
        list<wrapclass> wrplist = new list<wrapclass>();
        For(integer i=0;i<accname.size();i++)
        {
            wrapclass wrpinst = new wrapclass();
            wrpinst.name = accname[i];
            wrplist.add(wrpinst);
        }
        }
       // system.debug(':'+wrplist);
    }
    
    global wrapclass wrpinst{set;get;}
    global list<wrapclass>wrplist{set;get;}
    global class wrapclass
    {
        public string name{set;get;}
        public string phone{set;get;}
        public string email{set;get;}
    }

}