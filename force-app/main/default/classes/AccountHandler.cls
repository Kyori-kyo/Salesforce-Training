public class AccountHandler {

    public static Account insertNewAccount(String accName) {
        if(accName != ''){
            try {
                Account acct = new Account(Name=accName);
                    insert acct;
                	return acct;
                
            } catch(Exception e) {
                return null;
           		}
            
        } else {
            return null;
        }
    }
}