import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';

export default class GetPicklistValuesByRecordTypeOpp extends LightningElement {
    defaultRtId;
    stageNameOptions;
    leadSourceOptions;
    isSelected = false;
    isSelected2 = false;
    selectedStage;
    selectedLead;

    @wire(getObjectInfo, {objectApiName : OPPORTUNITY_OBJECT})
    objectInfoHandler({data,error}){
        if(data){
            this.defaultRtId = data.defaultRecordTypeId;
        }
        if(error){
            console.log(error);
        }
    }
    @wire(getPicklistValuesByRecordType, {objectApiName : OPPORTUNITY_OBJECT, recordTypeId: '$defaultRtId'})
    picklistHandler({data,error}){
        if(data){
            console.log('Picklist Values Opp => ', data);
            this.stageNameOptions = data.picklistFieldValues.StageName.values;
            this.leadSourceOptions = data.picklistFieldValues.LeadSource.values;
        }
        if(error){
            console.log(error);
        }
    }
    changeHandler(event){
        this.selectedStage = event.target.value;
        this.isSelected = true;
    }
    changeHandler2(event){
        this.selectedLead = event.target.value;
        this.isSelected2 = true;
    }
}