try {
    Account ac = new account();
    insert ac;
}catch(exception ex) {
    system.debug('Something went wrong');
    system.debug('ex -> ' + ex.getMessage());
    system.debug('ex line number : ' + ex.getLineNumber());
}

system.debug('Apex is SIMPLE');