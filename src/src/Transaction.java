public class Transaction extends Customer
{

    // creating variables
    double customerPaymentAmount;
    String customerPaymentType;

    // default constructor
    public Transaction()
    {

    }

    // printing results method
    public void printReceipt()
    {
        // finished later
    }

    // setters and getters
    public void setCustomerPaymentAmount(double customerPaymentAmount)
    {
        this.customerPaymentAmount = customerPaymentAmount;
    }

    public void setCustomerPaymentType(String customerPaymentType)
    {
        this.customerPaymentType = customerPaymentType;
    }

    public double getCustomerPaymentAmount()
    {
        return customerPaymentAmount;
    }

    public String getCustomerPaymentType()
    {
        return customerPaymentType;
    }
} // end of Transaction class
