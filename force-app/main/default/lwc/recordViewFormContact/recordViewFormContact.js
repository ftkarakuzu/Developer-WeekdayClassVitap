import { api, LightningElement } from 'lwc';

import NAME_FIELDS from '@salesforce/schema/Contact.Name';
import ACCOUNT_NAME_FIELDS from '@salesforce/schema/Contact.AccountId';
import PHONE_FIELDS from '@salesforce/schema/Contact.Phone';
import LEAD_FIELDS from '@salesforce/schema/Contact.LeadSource';
import DEPARTMENT_FIELDS from '@salesforce/schema/Contact.Department';
import BD_FIELDS from '@salesforce/schema/Contact.Birthdate';

import CONTACT_OBJECT from '@salesforce/schema/Contact';

export default class RecordViewFormContact extends LightningElement {
    objectName = CONTACT_OBJECT;
    @api recordId;

    fields = {
        name:NAME_FIELDS,
        accountName:ACCOUNT_NAME_FIELDS,
        phone:PHONE_FIELDS,
        leadSource:LEAD_FIELDS,
        department:DEPARTMENT_FIELDS,
        birthdate:BD_FIELDS
    }
}