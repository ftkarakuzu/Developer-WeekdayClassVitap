public class Loops_Assignment {
    public void ForLoops(integer n) {
       for (Integer i = 1; i < n; i++) {
        System.debug(i);
       }
    }
    public void printEven(integer fromN, integer toN){
            for (integer i = fromN; i <= toN; i++){
                integer modI = math.mod(i,2);
                if (modI == 0) {
                    system.debug(i);
                }
            }
        }
}

