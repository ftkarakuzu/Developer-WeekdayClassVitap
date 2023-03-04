import { LightningElement } from 'lwc';

export default class TwoWayBinding extends LightningElement {
    fullName = "Tulay";
    x=5;
    role;
    //creating combo box
    roleOptions = [
        { label: 'Saleforce Admin', value: 'Salesforce Admin'},
        { label: 'Salesforce Developer', value: 'Salesforce Developer'},
        { label: 'Salesforce Artitech', value: 'Salesforce Artitech'},
    ];

    changeHandler(event){
        if(event.target.label === "Enter your name"){
            this.fullName = event.target.value;
        }else{
            this.role = event.target.value;
        }
        
    }
    // changeHandlerCombobox(event){
    //     this.role = event.target.value;
    // }
}