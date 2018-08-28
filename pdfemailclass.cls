public class pdfemailclass 
{
    public List<contact> listaccs {get;set;}
    public pdfemailclass()
    {
        listaccs = [ select lastname,email,id,phone from contact ];
    }
      //@HttpPost if we write httppost we have to write static
     public void sendingEmail() 
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
        //setaddw.add('sandeepe2016@gmail.com');
        setaddw.add('c.vikasreddy3@outlook.com');
        email.setToAddresses(setaddw);
        email.setPlainTextBody('Body');
        email.setFileAttachments(new Messaging.EmailFileAttachment[] {efa1});
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
    }
    
}