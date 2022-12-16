//Create an instance of Trigger_Map.
Trigger_Map id = new Trigger_Map();
//Call InsertSF_Project and keep it’s return value in a new variable.
//(Hint : The return value will be Id so it can be stored in Id as well as String)
string newP = id.InsertSF_Project();
//Print the Id using System.debug
System.debug(newP);
//Call UpdateSF_Project and pass Id (received from InsertSF_Project) and Name as ‘Updated Trigger Project
id.UpdateSF_Project(newP , 'Updated Trigger Project');