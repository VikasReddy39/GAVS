//@RestResource(urlMapping='/sendPDFEmail/*')


global class pdfmailsend 
{
    //@HttpPost
    global void sendingEmail() 
    {
    
        PageReference ref = Page.pdfemail;
        Blob b = ref.getContentAsPDF();
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        Messaging.EmailFileAttachment efa1 = new Messaging.EmailFileAttachment();
        efa1.setFileName('attachment_WORK.pdf');
        efa1.setBody(b);
        String addresses;
        email.setSubject('Pdf of Vf page');
        list<string> setaddw = new List<string>();
        setaddw.add('sandeepe2016@gmail.com');
        email.setToAddresses(setaddw);
        email.setPlainTextBody('Body');
        email.setFileAttachments(new Messaging.EmailFileAttachment[] {efa1});
        Messaging.SendEmailResult [] r = Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
    }
    
}