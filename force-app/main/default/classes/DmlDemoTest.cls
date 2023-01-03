@isTest
public class DmlDemoTest {
    @isTest
    private static void dmlInsert1Test() {
        DmlDemo.dmlInsertDemo_stndObj();//This will create record in TEST world (Not in Org)
        //asserts mean actual TEST

        //soql will fetch 
        List<account> listAcc = [SELECT id, name FROM account WHERE name = 'SoftInnovas'];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }
    @isTest
    private static void dmlInsert4Test(){
        //prepare data
        Account acc = new account();
        acc.name = 'SoftInnovas Inc.';
        insert acc;
        DmlDemo.dmlInsertDemo_4();

        List<contact> listContact = [SELECT id, lastName FROM contact WHERE lastName = 'Biden'];
        system.assertEquals(1, listContact.size());
    }
    @istest
    private static void dmlInsert5Test() {
        //prepare data
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Test SP';
        sp.Status__c = 'New';
        insert sp;

        DmlDemo.dmlInsertDemo_55();

        //verify if ticket is INSERTED
        //soql to get ticket records
        List<Salesforce_Ticket__c> listST = [SELECT id, name, subject__c, Salesforce_Project__c FROM Salesforce_Ticket__c WHERE 
                                                         Salesforce_Project__c = :sp.id and subject__c = 'Learn Apex dmls'];
        System.assertEquals('Learn Apex dmls', listST[0].Subject__c);
    }
}  

