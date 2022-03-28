public class ContactSearch {

    public static List<Contact> searchForContacts (String a, String b){
        return [SELECT ID, Name FROM Contact WHERE LastName = :a AND MailingPostalCode = :b];
    }
}