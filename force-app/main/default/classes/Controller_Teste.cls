public class Controller_Teste {
    public static String nomeVar;

    public static String retornaNomeAcc(Id idAccount) {
        return [SELECT Id, Name FROM Account WHERE Id = :idAccount LIMIT 1].Name;
    }
    
}