public class String_Assignment {
    public void stringAssignment() {
        string Localstring = 'Thanks for the session on the string';
        
        integer length = Localstring.length();
        system.debug('The length of the local string is ' + length);

        string uppercase = Localstring.toUpperCase();
        system.debug('The uppercase version of the Localstring is ' + uppercase);

        boolean contains1 = Localstring.contains('session');
        system.debug('Does Localstring contain \'session\'? ' + contains1);

        boolean contains2 = Localstring.contains('sessions');
        system.debug('Does Localstring contain \'sessions\'? ' + contains2);

        boolean contains3 = Localstring.contains('SESSION');
        system.debug('Does Localstring contain \'SESSION\'? ' + contains3);


    }
}
