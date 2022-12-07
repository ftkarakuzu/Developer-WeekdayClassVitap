public class SoqlDemo2 {
    public static void soqlchildToParent_1(){
        list<Contact> listContacts = [select id, name, account.name, account.industry from contact where account.industry = 'Energy'];
        System.debug(listContacts);//by default in contact we don't have account fields. so this doesn't show.
        for (Contact eachContact : listContacts) {
            //get account name from contact record
            string accName = eachContact.Account.name;
                         //contact name from contact record
            system.debug('contact name = ' + eachContact.Name + ', its acc name is ' + accName);  
        }
    }
    public static void soqlParentToChild_1() {
        //if our outer query is account. and inner query is opportunity.
        //what list it would return?
        List<account> listAccOpp = [select id, name, annualrevenue, type, (select name, amount from opportunities where stageName = 'Closed Won') from account where type = 'Customer - Direct'];

        for (account eachAcc : listAccOpp) {
            system.debug('acc name => ' + eachAcc.Name + ', annual revenue => ' + eachAcc.AnnualRevenue);
            List<Opportunity> listOpp = eachAcc.Opportunities;
            for (opportunity eachOpp : listOpp) {
                system.debug('-- opp name => ' + eachOpp.Name + ', amount is ' + eachOpp.Amount);
            }
        }
   }    
   //Write an SOQL query for contact Object querying Account object fields in the same query referring ID and Name and pass them to a list<Contact> lstcontact records.
   public static void childToParent(){
    //Another method;
    //List<contact> lstcontact = new List<contact>();
    //lstcontact = [select id, name, account.name, account.id from Contact];
        List<Contact> lstcontact = [select id, name, account.name, account.id from Contact];
        system.debug(lstcontact);
        //Run the above the over the for loop and display the account id and account name.
        for (Contact eachContact : lstcontact){
            string aName = eachContact.Account.name;
            string aID = eachContact.Account.id;
            system.debug('The account name of '+ eachContact.name + ' is ' + aName + ' and its Account ID is ' + aID);
        }
   }
   
//Write an SOQL query for Account Object querying contact object fields in the same query referring ID and Name and pass them to a list<Account> lstaccount records.
public static void parentToChild(){
    list<account> lstaccount = [select id, name, (select id, name from Contacts) from Account];
    system.debug(lstaccount);
    //Run the above the over the for loop and display the Contact id and Contact name.
    for (account  eachAccount : lstaccount) {
        System.debug(eachAccount);
        System.debug('The account name is ' + eachAccount.name);
        list<contact> lstcontact = eachAccount.Contacts;
        for ( contact eachContact : lstcontact){
            System.debug('The contact name for the above account is ' + eachContact.name + ' and its ID is ' + eachContact.id);
        }
    }

}
}