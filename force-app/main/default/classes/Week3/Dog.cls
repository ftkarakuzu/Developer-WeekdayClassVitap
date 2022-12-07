public  class Dog {
    public string name;
    public string color;
    public integer age = 0;
    public static integer count = 0;

    public Dog() {
        count++;
        age = 1;
        checkAge();
        showCount();
    }
    public Dog(string nm, string clr, integer a){
        name = nm;
        color = clr;
        age = a;
        count++;
        checkAge();
        showCount();
    }
    public static void showCount(){
        system.debug('Total number of dogs is ' + count);
    }
    public void checkAge(){
        if (age > 0 && age <= 1) {
            system.debug('Puppy Dog'); 
        } else if (age >1 && age<=3) {
            System.debug('Young Dog');
        } else if (age >3 && age<=5) {
            System.debug('Adult Dog');
        } else {
            System.debug('Old Dog');
        }
    }
}
