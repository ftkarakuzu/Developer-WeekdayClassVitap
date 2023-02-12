//JSON: JavaScript Object Notation
// 1 student Single Record
{
    "Name" : "Tulay",
    "Age" : 41
    "Title" : "Developer",
    "Salary" : 120000
}

//2 students detail in JSON format
[
    {
    "Name" : "Tulay",
    "Age" : 41
    "Title" : "Developer",
    "Salary" : 120000

    },
    {
    "Name" : "Ayse",
    "Age" : 37
    "Title" : "Developer",
    "Salary" : 120000
}
]

//Get an account record and convert the same info into JSON format
Account acc = [SELECT Name, Type, Industry, AnnualRevenue FROM Account WHERE AnnualRevenue != null AND Type != null AND Industry != null LIMIT 1];
String jsonString = JSON.serialize(acc);
system.debug(jsonString);

// // Case records
// Case cs = [SELECT ContactId, Origin, ContactPhone, CaseNumber FROM Case WHERE Origin != null AND ContactPhone != null AND CaseNumber != null LIMIT 1];
// String jsonString = JSON.serialize(cs);
// system.debug(jsonString);

//Get 4 accounts and convert the same into JSON format
List<Account> accounts = [SELECT Name, Type, Industry, AnnualRevenue
                        FROM Account
                        WHERE AnnualRevenue != null 
                        AND Type != null 
                        AND Industry != null LIMIT 4];
String jsonString = JSON.serialize(accounts);
system.debug(jsonString);


//Callouts Test
RestCallouts.getAnimals();
RestCallouts.getAirlines();