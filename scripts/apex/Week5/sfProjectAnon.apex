//Create an instance of Trigger_Map.
Trigger_Map tgMap = new Trigger_Map();
//Call InsertSF_Project and keep it’s return value in a new variable.
//(Hint : The return value will be Id so it can be stored in Id as well as String)
Id newSFPid = tgMap.InsertSF_Project();
//Print the Id using System.debug
System.debug('New project id is: ' + newSFPid);
//Call UpdateSF_Project and pass Id (received from InsertSF_Project) and Name as ‘Updated Trigger Project
tgMap.UpdateSF_Project(newSFPid , 'Updated Trigger Project');