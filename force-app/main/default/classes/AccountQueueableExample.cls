public class AccountQueueableExample implements Queueable{
    //class variable
    public list<account> listAcc;
    public AccountQueueableExample(List<account> accounts) {
        //assign parameter variable to Class variable
        listAcc = accounts;
    }

    public void execute(QueueableContext qc){
        for (account eachAcc : listAcc) {
            eachAcc.Name += ' -- SI';
        }
        update listAcc;
    }
}