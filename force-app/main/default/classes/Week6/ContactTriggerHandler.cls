public class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<Contact> conTriggerNew, List<Contact> conTriggerOld,Map<Id,Contact> conTriggerNewMap, Map<Id,Contact> conTriggerOldMap) {
        //validation
        for (contact eachContact : conTriggerNew) {
            Contact oldContact = conTriggerOldMap.get(eachContact.id);
            if (oldContact.LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update Partner Referral contact');
            }
        }
        
    }
    public static void contactUpdateValidation2(List<Contact> conTriggerNew, List<Contact> conTriggerOld,Map<Id,Contact> conTriggerNewMap, Map<Id,Contact> conTriggerOldMap) {
        for (contact eachContact : conTriggerNew) {
            contact oldContact = conTriggerOldMap.get(eachContact.id);
            if (eachContact.LeadSource != oldContact.LeadSource) {
                eachContact.LeadSource.addError('Cannot update lead source!');
            }
        }

    }
}
