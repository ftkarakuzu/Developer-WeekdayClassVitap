public class StudentMarksheet {
    public void showMarksheetUsingDataType() {
        string firstName = 'Tulay';
        string lastName = 'Karakuzu';
        integer mathematics = 100;
        integer english = 90;
        integer chemistry = 85;
        
        system.debug(firstName);
        system.debug(lastName);
        system.debug(mathematics);
        system.debug(english);
        system.debug(chemistry);

    }

        public void showMarksheetUsingObject() {
        Object firstName = 'Tulay';
        Object lastName = 'Karakuzu';
        Object mathematics = 100;
        Object english = 90;
        Object chemistry = 85;
    
        system.debug(firstName + ' ' + lastName + ' ' + 'got ' + mathematics + ' for Math, ' + english + ' for English, ' + ' and ' + chemistry + ' for Chemistry.'  );
        }
}    