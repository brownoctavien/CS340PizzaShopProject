public class OrderInfo extends Customer
{

    // creating variables
    int orderID = 1;
    int typeID = 0;

    // default constructor
    public OrderInfo()
    {

    }

    // constructor for creating Order object
    public OrderInfo(int orderID, int typeID)
    {
        this.orderID = orderID;
        this.typeID = typeID;
    }

    // method for random orderID numbers
    public void makeOrderID()
    {
        int ID = 1213;
        ID = (int)((int) ID * Math.random());
        setOrderID(ID);
    }



    // getter and setter methods
    public void setOrderID(int orderID)
    {
        this.orderID = orderID;
    }

    public void setTypeID(int typeID)
    {
        this.typeID = typeID;
    }

    public int getOrderID()
    {
        return orderID;
    }

    public int getTypeID()
    {
        return typeID;
    }


























} // end of OrderInfo class