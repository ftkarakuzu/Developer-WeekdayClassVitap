public class DateTimeMethodsDemo {
    public void calculateAgeInMonths() {
        //1.Today's date
        date dttoday = date.today();

        //2. My Birthdate
        date myBDate = date.newInstance(1981, 4, 9);

        integer ageInMonths = myBDate.monthsBetween(DTTODAY);
        system.debug('My age in months is ' + ageInMonths);

    }
    public void calculateAgeInDays(){
        //1. Today's date
        date dttoday = date.today();
        //2. My Birthdate
        date myBDate = date.newInstance(1981, 4, 9);
        //age in days
        integer ageInDays = myBDate.daysBetween(DTTODAY);
        system.debug('My age in days is ' + ageInDays);
    }    

    public void printSubscriptionEndDate(){
        Date subscriptionStartDate = date.today();

        Date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('subscription ends on ' + subscriptionEndDate);

        integer endDateYear = subscriptionEndDate.year();
        system.debug('subscription end date YEAR is ' + endDateYear);

        integer endDateMonth = subscriptionEndDate.month();
        system.debug('subscription end date month is ' + endDateMonth);
   }

   public void printOfferEndDateTime(){
    datetime dtnow = datetime.now();

    datetime dtOfferEnd = dtnow.addHours(51);
    system.debug('offer end date and time ' + dtOfferEnd);

    date offerEndDate = dtOfferEnd.date();
    system.debug('offer end dtae is ' + offerEndDate);
   }

   public void birthDateToMilliSeconds(){
    datetime birthDate = datetime.newInstance(1981, 4, 9, 2, 54, 5);
        long longBirthDate = birthDate.getTime();
        system.debug('long birth date => ' + longBirthDate);
   }
}
