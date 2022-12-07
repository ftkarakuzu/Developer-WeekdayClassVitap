public class Soql_Assignment {
    public static void soql_WhereClause(){
        List<Contact> lstcontact = [select id, name from Contact where name like 'A%'];
        System.debug('The size of the contacts that starts with A is ' + lstcontact.size());
    }
    public static void soql_FromMethod(){
        List<Contact> lstcontact = [select id, LastName, Phone from Contact];
        for (Contact eachContact : lstcontact) {
            string ln = eachContact.LastName;
            string ph = eachContact.Phone;
            System.debug('The last name of the contact is ' + ln + ' and the phone number is ' + ph); 
        }
    }
}
