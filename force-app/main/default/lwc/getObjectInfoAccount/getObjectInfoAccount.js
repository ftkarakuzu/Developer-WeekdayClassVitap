import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';

export default class GetObjectInfoAccount extends LightningElement {

    @wire(getObjectInfo, {objectApiName: ACCOUNT_OBJECT})
    infoHandler(result){
        console.log(result);
    }
}