import { LightningElement, track } from 'lwc';

export default class TrackProperty extends LightningElement {
    @track location = {
        state : "Maryland",
        country : "USA"
    };
    changeHandler(event){
        this.location.state = event.target.value;
    }
}