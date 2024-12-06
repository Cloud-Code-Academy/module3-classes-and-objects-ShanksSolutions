//Great to lock in future date for unit testing, better than hard coding
Date futureDate = Date.today().addDays(+3);

Date pastDate = Date.newInstance(2024, 1, 1); 

// Calculating date difference - but you would change the future date to be just "today". 
Integer daysSinceStartOfYear = today.daysBetween(pastDate);

TransactionClass myTransactionClass = new TransactionClass(50, 'randomletters');

String description = myTransactionClass.getTransactionDescription();

System.debug(description)