import { LightningElement } from 'lwc';

export default class ConditionalRendering2 extends LightningElement {
    country;
    showContent;
    showContentTr;

    changeHandler(event){
        this.country = event.target.value;

        if(this.country === "USA"){
            this.showContent = true;
        }else if(this.country === "Turkiye"){
            this.showContentTr = true;
            this.showContent = false;
        }else{
            this.showContent = false;
            this.showContentTr = false;
        }
    }
    // get showContent() {
    //     if(this.country === "USA"){
    //         return true;
    //     }else{
    //         return false;
    //     }
    // }
}