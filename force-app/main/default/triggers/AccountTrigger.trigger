trigger AccountTrigger on Account (before insert,before update, after insert, after update) {
    //we carried the if(Trigger.isBefore)-if(updatedesc) part below to an apex class and write the below if statement instead

    if (Trigger.isBefore){
        AccountTriggerHandler.updateDescription(Trigger.new, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    /*if(Trigger.isBefore) {
        for (account eachAcc : Trigger.new) {
            boolean updateDesc = false;
            if(Trigger.isInsert && eachAcc.Active__c == 'Yes') {
                //just update field
                updateDesc = true;
            }
            //if account is updated
            //check if active field is changed from not yes to yes
            //then update description
            if(Trigger.isUpdate) {
                //get old account using OldMap
                Account oldAccount = Trigger.oldMap.get(eachAcc.Id);
                //get new account using newMap
                Account newAccount = Trigger.newMap.get(eachAcc.Id);
                //oldAccount.Active__c != newAccount.Active__c
                if (eachAcc.Active__c == 'Yes' && oldAccount.Active__c != newAccount.Active__c){
                    eachAcc.Description = 'Account is NOW ACTIVE. You must Enjoy!!';
                }
            }
            if (updatedesc) {
                eachAcc.Description = 'Account is now active. Enjoy!!';
            }
        }
    }*/
}

/*
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger');

        map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
        map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key

        set<id> accountIds = accTriggerNewMap.keySet(); //all the IDS.
        set<id> accountIdsOld = accTriggerOldMap.keySet(); //all ids of oldMap
        System.debug('accountids -> ' + accountIds);
        System.debug('accountIdsOld -> ' + accountIdsOld);


        integer countWebsite = 0;

        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            string newWebsite = newAcc.Website;
            system.debug('** newWebsite -> ' + newWebsite);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            string oldWebsite = oldAcc.Website;
            system.debug('** oldWebsite -> ' + oldWebsite);

            if (newWebsite != oldWebsite) {
                system.debug('Account is ' + newAcc.Name + ', website changed to ' + newwebsite);
                countwebsite++;
            }
           
        }
        system.debug('website updated for # of accounts => ' + countwebsite);
    }
}    */
/*
    List<account> accTriggerOld = trigger.old; //list of old records
    List<account> accTriggerNew = trigger.new; //list of new records
    map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key

    if (Trigger.isAfter && Trigger.isUpdate) {

        //old account name and new account name using ONE for loop.
        
        //get set of id using map.
        set<id> accountIds = accTriggerNewMap.keySet();
        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            system.debug('NEW Acc Name is ' +  newacc.Name);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            system.debug('Old Acc Name is ' +  oldacc.Name);
        }
    } 
}    */
    /*
    //what elements we have in these maps.
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert old => ' + accTriggerOld);
        system.debug('before insert new => ' + accTriggernew);
        system.debug('before insert old map => ' + accTriggerOldMap);
        system.debug('before insert new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert old => ' + accTriggerOld);
        system.debug('after insert new => ' + accTriggernew);
        system.debug('after insert old map => ' + accTriggerOldMap);
        system.debug('after insert new map => ' + accTriggernewMap);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update old => ' + accTriggerOld);
        system.debug('before update new => ' + accTriggernew);
        system.debug('before Update old map => ' + accTriggerOldMap);
        system.debug('before Update new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update old => ' + accTriggerOld);
        system.debug('after update new => ' + accTriggernew);
        system.debug('after Update old map => ' + accTriggerOldMap);
        system.debug('after Update new map => ' + accTriggernewMap);
    } 
}*/
     /*
    if (trigger.isAfter) {
        List<account> accTriggerNew = trigger.New;//New (updated) values of records

        set<id> setIds = new set<id>();//add all IDS of accounts which are inserted/updated
        for (account newAcc : accTriggerNew) {
            Id accId = newAcc.id;
            setids.add(accId);//adding ID to newly created set.
        }
        system.debug(setids);
    }
    */

    /*if (trigger.isBefore && trigger.isUpdate) {
        List<account> accTriggerOld = trigger.old; //OLD (previous) values of records
        for (account oldAcc : accTriggerOld) {
            system.debug('old acc name = ' + oldAcc.Name + ', old acc id => ' + oldAcc.Id);
        }

        List<account> accTriggerNew = trigger.New;//New (updated) values of records
        for (account newAcc : accTriggerNew) {
            system.debug('new acc name = ' + newAcc.Name + ', new acc id => ' + newAcc.Id);
        }
    }*/
    

    /*if (Trigger.isBefore && Trigger.isInsert) {
        System.debug('account before insert trigger.old --> ' + trigger.old);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        System.debug('account after insert trigger.old --> ' + trigger.old);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        System.debug('account before UPDATE trigger.old --> ' + trigger.old);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        System.debug('account after UPDATE trigger.old --> ' + trigger.old);
    } */
    
  /*  List<Account> accTriggerNew = trigger.new;
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('BEFORE UPDATE new record ==> '  + accTriggerNew);
        system.debug('BEFORE UPDATE  new accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            system.debug('BEFORE UPDATE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }

    if (Trigger.isAfter && Trigger.isUpdate) {
        System.debug('AFTER newly UPDATED record ==> ' + accTriggerNew);
        System.debug('AFTER newly UPDATED accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            System.debug('AFTER UPDATE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachAcc.name);
        }
    } */


    /*if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('BEFORE INSERT new record ==> '  + accTriggerNew);
        system.debug('BEFORE INSERT  new accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            system.debug('BEFORE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }

    if (Trigger.isAfter && Trigger.isInsert) {
        System.debug('AFTER newly inserted record ==> ' + accTriggerNew);
        System.debug('AFTER newly inserted accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            System.debug('AFTER each acc id is ' + eachAcc.Id + ', each acc name is ' + eachAcc.name);
        }
    }*/
    
    /*
    //insert
    if (trigger.isInsert && trigger.isAfter) {
        System.debug('account after insert trigger called');
    }
    if (trigger.isInsert && trigger.isBefore) {
        System.debug('account before insert trigger called');
    }
    //upate
    if (trigger.isUpdate && trigger.isBefore) {
        System.debug('account before UPDATE trigger called');
    }
    if (trigger.isUpdate && trigger.isAfter) {
        System.debug('account after UPDATE trigger called');
    }

    //before insert
    //System.debug('account before INSERT trigger called.');//when will this code run?
    //System.debug('account before UPDATE trigger called.');

    /*if (Trigger.isBefore) {
        System.debug('account before insert trigger called.');
    }
    if (Trigger.isAfter) {
        System.debug('account after insert trigger called');
    } */
    
    /* if (trigger.isInsert){
        System.debug('account before INSERT trigger called.');
    }
    if (trigger.isUpdate) {
        System.debug('account before UPDATE trigger called.');
    } */
