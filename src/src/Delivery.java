public class Delivery extends OrderInfo
{


    // creating variables
    int typeID;
    int boxAmount;
    int phoneNumber;



    // default constructor
    public Delivery()
    {

    }


    // getter and setter methods
    public void setBoxAmount(int boxAmount)
    {
        this.boxAmount = boxAmount;
    }

    public int getBoxAmount()
    {
        return boxAmount;
    }

    public void setPhoneNumber(int phoneNumber)
    {
        this.phoneNumber = phoneNumber;
    }

    public int getPhoneNumber()
    {
        return phoneNumber;
    }

} // end of Delivery class
