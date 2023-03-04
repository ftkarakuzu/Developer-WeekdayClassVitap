//js is the brain of the component,but html just show the ready info
import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    fullName = 'Tulay';  // you can use both '' or ""
    age = 25
    location = {
        city : "Frederick",
        country : "USA"
    };

    sum(a,b){
        return a + b;
    }
}