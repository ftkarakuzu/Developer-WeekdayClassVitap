public class Collections_Assignment {
    public static void listMethods() {
        list<string> daysOfWeek = new list<string>();
        daysOfWeek.add('Sunday');
        daysOfWeek.add('Tuesday');
        daysOfWeek.add('funday');
        daysOfWeek.add('Thursday');
        System.debug('add(listElement) Method is used to create a list:' + daysOfWeek);
        daysOfWeek.add(2, 'Wednesday');
        System.debug('add(index,element) Method is used to add another day:' + daysOfWeek);
        List<String> daysOfWeek2 = new List<String>();
        daysOfWeek2.add('Friday');
        daysOfWeek2.add('Saturday');
        daysOfWeek.addAll(daysOfWeek2);
        System.debug('addAll(fromList) Method is used to add some missing days:' + daysOfWeek);
        System.debug('indexOf(listElement) Method is used to identify the index number of *funday*: ' + daysOfWeek.indexOf('funday'));
        System.debug('remove(index) Method is used to remove a day;' + daysOfWeek.remove(3));
        System.debug('contains(listElement) Method is used to see if there is still *funday* in the list: ' + daysOfWeek.contains('funday'));
        System.debug('get(index) Method is used to call the second element: ' + daysOfWeek.get(1));
        System.debug('isEmpty() Method is used to see if the list is empty: ' + daysOfWeek.isEmpty());
        System.debug('size() Method is used to find the number of elements: ' + daysOfWeek.size());
        System.debug('The list after several updates is ' + daysOfWeek);
        daysOfWeek.add(1, 'Monday');
        System.debug('add(index,listElement) Method is used to add another day for a specific index number: ' + daysOfWeek);
        daysOfWeek.sort();
        System.debug('sort() Method is used to put items in ascending order: ' + daysOfWeek);
        System.debug('toString() Method is used to return the string representation of the list: ' + daysOfWeek.toString());
        setMethods(daysOfWeek);
    }
    public static void setMethods(list<string> daysOfWeek){
        Set<String> weekDays = new Set<String>(daysOfWeek);
        System.debug('A set is created from a list: ' + weekDays);
        weekDays.clear();
        System.debug('clear Method is used to remove all of the elements from the set: ' + weekDays);
        System.debug('isEmpty Method used to see if the set has zero elements: ' + weekDays.isEmpty());
        weekDays.addAll(daysOfWeek);
        System.debug('addAll(fromList) Method is used to add all elements of the list: ' + weekDays);
        set<string> weekDays2 = new set<string>();
        weekDays2 = weekDays.clone();
        System.debug('clone Method is used to dublicate the set: ' + weekDays2);
        System.debug('remove(setElement) is used: ' + weekDays2.remove('Sunday'));
        System.debug('remove(setElement) is used: ' + weekDays2.remove('Saturday'));
        System.debug('size Method use to find the number of elements of the new set: ' + weekDays2.size());
        System.debug('equals(set2) Method used to compare the two sets: ' + weekDays.equals(weekDays2));
        System.debug('containsAll(listToCompare) Method used to check if the set and the list have the same elements: ' + weekDays2.containsAll(daysOfWeek));
        list<string> removeWeekends = new list<string>();
        removeWeekends.add('Saturday');
        removeWeekends.add('Sunday');
        System.debug('A list of weekend days: ' + removeWeekends);
        weekDays2.removeAll(removeWeekends);
        System.debug('removeAll(setOfElemenetsToRemove) Method used to remove weekends from set2: ' + weekDays2);
        weekDays.retainAll(weekDays2);
        System.debug('retainAll(setOfElementsToRetain Method is used to retain only the set2 elements in the first set: ' + weekDays);

    }
         
}
