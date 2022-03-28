public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads (String param){
        
        List<List<SObject>> searchedResults = [FIND :param IN NAME FIELDS RETURNING
                                              Contact(FirstName, LastName),
                                              Lead(Name, LastName, Company)];
        
        return searchedResults;
    }
}