trigger AssetTrigger on Asset (before insert, before update) {
    if(Trigger.isBefore && Trigger.isInsert){
        AssetTriggerHandler.AssetHandlerUpdate(Trigger.New, Trigger.Old, 
Trigger.NewMap, Trigger.OldMap);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        AssetTriggerHandler.AssetHandlerUpdate(Trigger.New, Trigger.Old, 
Trigger.NewMap, Trigger.OldMap);
    }
}