//-----------Assignment Dec 12-------------
trigger SalesforceProjectTrigger on Salesforce_Project__c (before update, before insert, after insert, after update) {
    List<Salesforce_Project__c> newSFPList = Trigger.new;
    //Use the Trigger.New on insert and set the name of Project as ‘New Trigger Project’ before insert. 
    if ( Trigger.isInsert && Trigger.isBefore ){
        for (Salesforce_Project__c SFP : newSFPList) {
            SFP.Project_Name__c = 'New Trigger Project';
            //Use system.debug to display the project name.
            System.debug('The name of the project is ' + SFP.Project_Name__c);            
        }

    }
    //Use Trigger.newMap and Trigger.oldMap on update.
    
    if (Trigger.isUpdate && Trigger.isAfter){
        Map<Id, Salesforce_Project__c> newSFPMap = Trigger.newMap;
        Map<Id, Salesforce_Project__c> oldSFPMap = Trigger.oldMap;
        set<id> SFPIds = newSFPMap.keySet(); //all the IDs
    //Use for loop on the map variable and use system.debug to display the project name before update and project name after update
        for (id eachId : SFPIds) {
            System.debug('The project name before update is ' + oldSFPMap.get(eachId).Project_Name__c);
            System.debug('The project name after update is ' + newSFPMap.get(eachId).Project_Name__c);
        }
    }
}

// trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update) {
//     if (Trigger.isAfter && Trigger.isInsert) {
//          //call trigger handler to CREATE salesforce ticket.
//          SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);
//     }
//     if (Trigger.isBefore && trigger.isUpdate) {
//         //call validation method here.
//         SalesforceProjectTriggerHandler.completeSPvalidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//     }
// }