public class Controller_EmailManager {

    public void sendMail(String address, String subject, String body) {

        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessagE();

        String[] toAddresses = new String[] {address};
            mail.setToAddresses(toAddresses);
        	mail.setSubject(subject);
        	mail.setPlainTextBody(body);

        Messaging.SendEmailResult[] results = Messaging.sendEmail(
            new Messaging.SingleEmailMessage[] { mail });

        inspectResults(results);
    }
    
    private static Boolean inspectResults(Messaging.SendEmailResult[] results) {
        Boolean sendResult = true;

        for (Messaging.SendEmailResult res : results) {
            if (res.isSuccess()) {

                System.debug('Email sent successfully!');
            }
            else {
                sendResult = false;
                System.debug('The following errors ocurred: ' +res.getErrors());
            }
        }

        return sendResult;
    }
    
}

// enviar email pra alguém usando o Apex
// EmailManager em = new EmailManager();
// em.sendMail('Your email address', 'Trailhead Tutorial', '123 body');

