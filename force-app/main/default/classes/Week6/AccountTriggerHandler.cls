public class AccountTriggerHandler {
    public static void updateDescription(List<Account> accTriggerNew, List<account> accTriggerOld, 
    Map<Id,Account> accTriggerNewMap,Map<Id,Account> accTriggerOldMap) {
                    for (account eachAcc : accTriggerNew) {
                        boolean updateDesc = false;
                        if (Trigger.isInsert && eachAcc.Active__c == 'Yes') {
                            //just update field
                            updateDesc = true;
                        }
                        //if account is updated.
                            //check if active field is changed from not yes to yes
                            //then update description
                        if (Trigger.isUpdate) {
                            //get old account using OldMAP
                            Account oldAccount = accTriggerOldMap.get(eachAcc.Id);
                            //get new account using newMap
                            Account newAccount = accTriggerNewMap.get(eachAcc.Id);
                            //oldAccount.Active__c != newAccount.Active__c
                            if (eachAcc.Active__c == 'Yes' &&
                               oldAccount.Active__c != newAccount.Active__c ) {
                                updateDesc = true;
                            }
                        }
                        if (updateDesc) {
                            eachAcc.Description = 'Account is now active. Enjoy buddy!!';
                        }
                    }
    }
    public static void updateVIPforContacts(List<Account> accTriggerNew, List<account> accTriggerOld, 
    Map<Id,Account> accTriggerNewMap,Map<Id,Account> accTriggerOldMap) {
    //get set of account ids where VIP fiels is updated
            //10 accounts --> 3 VIP is changed
        set<id> accIds = new set<id>();
        for (account eachACC : accTriggerNew) {
            if (eachAcc.vip__c != accTriggerOldMap.get(eachAcc.id).vip__c) {
            accIds.add(eachAcc.Id);
            }  
        }      
    //get contacts for all those accounts
            //get contacts for all those 3 accounts with their contacts
        List<contact> allContacts = [SELECT id, vip__c, accountId FROM contact WHERE account.id in :accIds];
        
        if(!allContacts.isEmpty()){
           //for loop on contacts
            //set vip for each contact with Account's vip field
        for (contact eachCon : allContacts) {
            //get account's vip field
            //id contactAccId = eachCon.AccountId;
            //Account newAcc = accTriggerNewMap.get(contactAccId);
            //boolean accVIP = newAcc.vip__c;
        
           // boolean accVIP2 = accTriggerNewMap.get(eachCon.AccountId).vip__c;
            eachCon.vip__c = accTriggerNewMap.get(eachCon.AccountId).vip__c;
        }  
        //update list of Contacts
        update allContacts;   
        }    
    }

}