trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, before update, after insert, after update) {
    //Use the Trigger.New on insert and set the name of Project as ‘New Trigger Project’ before insert. 
    if (Trigger.isBefore && Trigger.isInsert){
        for (Salesforce_Project__c sfP : trigger.new) {
            sfP.Project_Name__c = 'New Trigger Project';
            //Use system.debug to display the project name.
            System.debug('The name of the project is ' + sfP.Project_Name__c);            
        }

    }
    //Use Trigger.newMap and Trigger.oldMap on update.
    
    if (trigger.isAfter && trigger.isUpdate){
        set<id> pIds = Trigger.newMap.keySet();
    //Use for loop on the map variable and use system.debug to display the project name before update and project name after update
        for (id eachP : pIds) {
            System.debug('The project name before update is ' + Trigger.OldMap.get(eachP).Project_Name__c);
            System.debug('The project name after update is ' + Trigger.NewMap.get(eachP).Project_Name__c);
        }
    }
}