public class OrderInfo extends Customer
{

    // creating variables
    int orderID = 10000;
    int typeID = 10000;

    // default constructor
    public OrderInfo()
    {

    }

    // constructor for creating Order object
    public OrderInfo(int orderID, int typeID)
    {
        this.orderID = getOrderID();
        this.typeID = getTypeID();
    }

    // method for random orderID numbers
    public void makeOrderID()
    {
        int id = orderID;
        id = (int) ((int) this.getOrderID() * 1.314234);
        id =  (int) (Math.random() * id);
        setOrderID(id);
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