Map<String,Integer> marksObtainInMath = new Map<String,Integer>();
marksObtainInMath.put('0111CE112', 40);
marksObtainInMath.put('0111CE102', 19);
marksObtainInMath.put('0111CE100', 33);
marksObtainInMath.put('0111CE098', 40);
System.debug(marksObtainInMath);

//Add multiple mappings of your choice in the marksObtainInMaths Map.
marksObtainInMath.put('0111CE104', 31);
marksObtainInMath.put('0111CE106', 38);
System.debug(marksObtainInMath);

//Print all the Student Roll Number present in the marksObtainInMaths.
for (string stRollNumber : marksObtainInMath.keySet()) {
    System.debug(stRollNumber);    
}
//Print all the Marks Obtain present in the marksObtainInMaths.
for (integer stMarksObtain : marksObtainInMath.values()) {
    System.debug(stMarksObtain);    
}
//Create a set as uniqueRollNumberSet and populate it with all the Roll number from marksObtainInMaths.
Set<string> uniqeRollNumberSet = marksObtainInMath.keySet();
System.debug(uniqeRollNumberSet);

// Create a List as marksObtainList and populate it with all the marks obtain from marksObtainInMaths.
List<Integer> marksObtainList = marksObtainInMath.values();
System.debug(marksObtainList);

//If the mark obtain is less than 20. Print the mgs (rollNumber + ‘ is not qualified for next class’)
for (Integer i = 0; i < marksObtainList.size(); i++) {
    Integer stMarks = marksObtainList.get(i);
    System.debug(stMarks);
    if (stMarks<20) {
        System.debug(marksObtainList.get(i) + ' is not qualified for next class');        
    }
}

