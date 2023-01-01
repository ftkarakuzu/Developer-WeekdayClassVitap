// By any chance if we try to just update without modifying the status field it should not change the description.

// Create a static method Assethandlerupdate which returns nothing and accepts LIST<ASSET>,LIST<ASSET>,MAP<ID,ASSET>,MAP<ID,ASSET>
public class AssetTriggerHandler {
    public static void AssetHandlerUpdate(List<Asset> assetTriggerNew, List<Asset> assetTriggerOld, Map<Id,Asset> assetTriggerNewMap, Map<Id, Asset> assetTriggerOldMap) {
        if (assetTriggerNewMap != null) {
            set<id> assetIdSet = assetTriggerNewMap.keySet();
            for (Id assetId : assetIdSet) {
                // If status of the field while inserting or updating is equal to Shipped then the Description should be ‘Asset is shipped’
                if(assetTriggerNewMap.get(assetId).Status != assetTriggerOldMap.get(assetId).Status && assetTriggerNewMap.get(assetId).Status == 'Shipped'){
                    assetTriggerNewMap.get(assetId).Description = 'Asset is shipped';
                }
                // If status of the field while inserting or updating  is equal to Installed then the Description should be ‘Asset is Installed’
                if(assetTriggerNewMap.get(assetId).Status != assetTriggerOldMap.get(assetId).Status && assetTriggerNewMap.get(assetId).Status == 'Installed'){
                    assetTriggerNewMap.get(assetId).Description = 'Asset is Installed';
                }
        }  
        //burdan sonrasini hic anlamadim!
    }else {
        for(Asset eachAsset : assetTriggerNew){
            if (eachAsset.Status == 'Shipped') {
                eachAsset.Description = 'Asset is shipped';
            }else if(eachAsset.Status == 'Installed'){
                eachAsset.Description = 'Asset is Installed';
            }
        }
        }
    }
}    
