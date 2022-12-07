public class Datetime_Assignment {
    public void diffofDate() {
        Date varTomorrowDate = date.newInstance(2022, 11, 18);
        Date varTodaysDate = date.newInstance(2022,11,17);
        Integer diffofDate = varTodaysDate.daysBetween(varTomorrowDate);
        system.debug('The number of days between today and tomorrow is ' + diffofDate);

    }
    public void Timecheck() {
        Datetime varTomorrowDatetime = datetime.newInstance(2022,11,18,7,0,0);
        system.debug('Tomorrow\'s date is ' + varTomorrowDatetime);
        Datetime var10DaysDatetime = datetime.newInstancegmt(2022,11,28,9,0,0);
        system.debug('10 days after tomorrow will be ' + var10DaysDatetime);
        Long varDatetimeLong = 12339874361L;
        system.debug('Long date time is ' + varDatetimeLong);
        Datetime add7days = varTomorrowDatetime.addDays(7);
        system.debug('7 days after tomorrow is ' + add7days);
        Datetime add10days = var10DaysDatetime.addDays(10);
        system.debug('20 days after tomorrow is ' + add10days);
    }
}
