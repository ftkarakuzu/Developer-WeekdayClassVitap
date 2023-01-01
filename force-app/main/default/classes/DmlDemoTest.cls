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
}  

