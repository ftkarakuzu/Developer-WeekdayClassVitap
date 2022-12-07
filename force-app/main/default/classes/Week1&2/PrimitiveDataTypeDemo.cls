public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        system.debug('print data types');
        string batchName = 'Batch 11';
        integer totalCandidates = 80;
        boolean isAdminCompleted = true;

        system.debug('batch name is ' + batchName);
        system.debug('total number of candidtes are ' + totalCandidates);
        system.debug('Is Admin completed? ' + isAdminCompleted);

        string batchDescription = batchName + ' is the best';
        system.debug(batchDescription);

        Decimal decValue = 24.7;
        system.debug('decimal value is ' + decValue);

        Long l = 24354758735L;
        system.debug('long value is ' + l);
    }

    public void printBasicDataType2(){
        Object ob1 = 'assigning string to object.Allowed?';
        Object ob2 = 5000;
        Object ob3 = false;

        system.debug(ob1);
        system.debug(ob2);
        system.debug(ob3);

        ID accoundId = '001Do000003E7FsIAK';
        system.debug('id -> ' + accoundId);

    }
}