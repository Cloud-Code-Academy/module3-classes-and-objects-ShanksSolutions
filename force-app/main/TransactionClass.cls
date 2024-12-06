//Example used in class for training
public with sharing class TransactionClass {
    public Decimal amount;
    public String transactionId; 

    public static Integer totalTransactions = 0;

    public TransactionClass(Decimal amount, String transactionId) { 
        this.amount = amount; 
        this.transactionId = transactionId;
        totalTransactions++; // ++ to increase the count of the total transactions since it starts at zero
    }

    public Decmial getAmount() {
        return this.amount;
    }

    public String getTransactionId() {
        return this.transactionId;
    }

    public void setAmount() {
        this.amount = amount;
    }

    public void setTransactionId() { 
        this.transactionId = transactionId;
    }
// the 'get' and 'set' allows you to get and set amounts. If they are public it doesn't matter
// but if they are 'private' then it won't work
// 'this' means for this instance - referencing the value fo the specific instance. 
    public String getTransactionDescription() {
        return 'Transaction in the amount of: ' + this.amount + 'with Id: ' + this.transactionId;
    }

    public static Integer getTotalTransactions() {
        return totalTransactions;
    }
}