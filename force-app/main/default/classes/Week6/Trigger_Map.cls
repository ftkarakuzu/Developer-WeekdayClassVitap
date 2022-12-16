public class Trigger_Map {
    //Create a method InsertSF_Project
    public Id InsertSF_Project() {
        //Insert a new record of Salesforce Project (Salesforce_Project__c)
        Salesforce_Project__c SFP = new Salesforce_Project__c();
        SFP.project_name__c = 'Trigger Assignment';
        insert SFP;
        //Method should return Id of the newly created Salesforce Project
        return SFP.id;      
    }
    //Create a method UpdateSF_Project
    //The method accepts 2 inputs, one is the Id and second one is the name. (Choose data type accordingly)
    public void UpdateSF_Project(id sFPid, string name) {
        //Update the Project_Name__c field with the value received in name input
        Salesforce_Project__c sfUpdate = [SELECT id, name FROM Salesforce_Project__c WHERE id =: sFPid];
        sfUpdate.Project_Name__c = name;
        update sfUpdate;
        
    }

}
