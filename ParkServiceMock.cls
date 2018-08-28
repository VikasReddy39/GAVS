@isTest
global class ParkServiceMock implements WebServiceMock {
   global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
        // start - specify the response you want to send
        parkService.byCountryResponse a = new ParkService.byCountryResponse();
        a.return_x = new List<String>{'Lal Bhag', 'Cubbon Park', 'Pazhassi Dam'};
               // end
        response.put('a', a);
   }
}