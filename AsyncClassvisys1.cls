//Generated by wsdl2apex

public class AsyncClassvisys1 {
    public class searchingResponse_elementFuture extends System.WebServiceCalloutFuture {
        public classvisys1.wrapperclass[] getValue() {
            classvisys1.searchingResponse_element response = (classvisys1.searchingResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.result;
        }
    }
    public class Asyncwebserviceclassfordb {
        public String endpoint_x = 'https://ap5.salesforce.com/services/Soap/class/webserviceclassfordb';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        public classvisys1.DebuggingInfo_element DebuggingInfo;
        public classvisys1.AllowFieldTruncationHeader_element AllowFieldTruncationHeader;
        public classvisys1.SessionHeader_element SessionHeader;
        public classvisys1.DebuggingHeader_element DebuggingHeader;
        public classvisys1.CallOptions_element CallOptions;
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/schemas/class/webserviceclassfordb';
        private String AllowFieldTruncationHeader_hns = 'AllowFieldTruncationHeader=http://soap.sforce.com/schemas/class/webserviceclassfordb';
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/schemas/class/webserviceclassfordb';
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/schemas/class/webserviceclassfordb';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/schemas/class/webserviceclassfordb';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/schemas/class/webserviceclassfordb', 'classvisys1'};
        public AsyncClassvisys1.searchingResponse_elementFuture beginSearching(System.Continuation continuation,String namee,String phonee) {
            classvisys1.searching_element request_x = new classvisys1.searching_element();
            request_x.namee = namee;
            request_x.phonee = phonee;
            return (AsyncClassvisys1.searchingResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncClassvisys1.searchingResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/webserviceclassfordb',
              'searching',
              'http://soap.sforce.com/schemas/class/webserviceclassfordb',
              'searchingResponse',
              'classvisys1.searchingResponse_element'}
            );
        }
    }
}