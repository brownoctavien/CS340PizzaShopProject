public class CreditCard extends Customer
{

    // creating variables
    String nameOnCreditCard;
    String creditCardType;
    int creditCardNumber;
    int creditCardExpirationDate;

    // default constructor
    public void CreditCard()
    {

    }

    public void setNameOnCreditCard(String nameOnCreditCard)
    {
        this.nameOnCreditCard = nameOnCreditCard;
    }

    public void setCreditCardType(String creditCardType)
    {
        this.creditCardType = creditCardType;
    }

    public void setCreditCardNumber(int creditCardNumber)
    {
        this.creditCardNumber = creditCardNumber;
    }

    public void setCreditCardExpirationDate(int creditCardExpirationDate)
    {
        this.creditCardExpirationDate = creditCardExpirationDate;
    }

    public String getNameOnCreditCard()
    {
        return nameOnCreditCard;
    }

    public String getCreditCardType()
    {
        return creditCardType;
    }

    public int getCreditCardNumber()
    {
        return creditCardNumber;
    }

    public int getCreditCardExpirationDate()
    {
        return creditCardExpirationDate;
    }
} // end of Credit Card class
