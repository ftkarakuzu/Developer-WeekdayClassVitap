trigger LeadTrigger on Lead (before insert, before update) {
    List<lead> leadTriggerNew = trigger.new;
    if (Trigger.isBefore && Trigger.isInsert){
        for (lead eachLead : leadTriggerNew) {
            System.debug('Newly created Lead Record: ' + eachLead);
        }
    }
    if (Trigger.isBefore && Trigger.isUpdate){
        for (lead eachLead : leadTriggerNew) {
            System.debug('Updated Lead Record ID is ' + eachLead.Id + ', Name is ' + eachLead.LastName + ' and Description is ' + eachLead.Description);
        }
    }
}