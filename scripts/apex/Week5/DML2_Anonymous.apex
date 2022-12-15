DML2_Assgn.insert_dml();
DML2_Assgn.updating_dml();

//Call createBulkContacts.Call searchForContacts and pass ‘Ruffalo’ as parameter.Print the list returned from searchForContacts method
DML2_Assgn.createBulkContacts();
List<Contact> RList =  DML2_Assgn.searchForContacts('Ruffalo');
System.debug('List of names with Rufoalo: ' + RList);