public class DML2_Assgn {
    public static void insert_dml() {
        Account record = new account();
        record.name = 'Tulay Assignment';
        Account record2 = new account();
        record2.name = 'Tulay Assignment';

        insert record;
        insert record2;
    }
    public static void updating_dml() {
        Account record3 = new account();
        record3.name = 'Account Created';

        insert record3;

        record3.name = 'Account Updated';
        update record3;
    }
    //Create a method createBulkContacts The method creates 5 contacts by name given below
    public static void createBulkContacts() {
        List<Contact> listCnt = new List<Contact>();

        Contact c1 = new Contact();
        c1.FirstName = 'Mark';
        c1.LastName = 'Ruffalo';
        listCnt.add(c1);
        Contact c2 = new Contact();
        c2.FirstName = 'Mark';
        c2.LastName = 'Ruffalo';
        listCnt.add(c2);
        Contact c3 = new Contact();
        c3.FirstName = 'Chris';
        c3.LastName = 'Hemsworth';
        listCnt.add(c3);
        Contact c4 = new Contact();
        c4.FirstName = 'Scarlett';
        c4.LastName = 'Johansson';
        listCnt.add(c4);
        Contact c5 = new Contact();
        c5.FirstName = 'Scarlett';
        c5.LastName = 'Johansson';
        listCnt.add(c5);

        insert listCnt;

    }
    //Create a method searchForContacts. The method must accept one incoming string as parameter.
    //The method should then find any contact that has a last name matching the string that is received as parameter.
    //The method should finally return a list of Contact records of type List that includes the ID and Name fields.
    public static List<Contact>searchForContacts(String lastName) {
        List<Contact> listCnt = [SELECT Id, Name FROM Contact WHERE LastName =: lastName];
        return listCnt;
    }
}
