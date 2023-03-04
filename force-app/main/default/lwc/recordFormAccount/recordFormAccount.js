import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import NAME_FIELDS from '@salesforce/schema/Account.Name';
import TYPE_FIELDS from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELDS from '@salesforce/schema/Account.Industry';
import REVENUE_FIELDS from '@salesforce/schema/Account.AnnualRevenue';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';

export default class RecordFormAccount extends LightningElement {
    objectName = ACCOUNT_OBJECT;
    accFields = [NAME_FIELDS, TYPE_FIELDS, INDUSTRY_FIELDS, REVENUE_FIELDS];
    recordId = "001Do0000043Q5AIAU";

    successHandler(){
        const successEvent = new ShowToastEvent({
            title:"Success",
            message:"Account record has been saved successfully!",
            variant:"success"
        });
        this.dispatchEvent(successEvent);
    }
    errorHandler(){
        const errorEvent = new ShowToastEvent({
            title:"Error",
            message:"An error has been occurred!",
            variant:"error"
        });
        this.dispatchEvent(errorEvent);
    }
}