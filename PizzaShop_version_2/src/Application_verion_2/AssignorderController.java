package Application_verion_2;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.Node;
import javafx.scene.control.Alert;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;

public class AssignorderController {

    @FXML
    private ComboBox pizzaSize_cbox;
    @FXML
    private ComboBox topping_cbox;
    @FXML
    private ComboBox saleType_cbox ;
    @FXML
    private TextField qantity_txt;
    @FXML
    private TextField name_txt;



    public void back(ActionEvent event) throws Exception {
        ((Node)event.getSource()).getScene().getWindow().hide();  //hide current window

        Main main = new Main();
        main.createWindow("Main_2.fxml");
    }

    public void next(ActionEvent event) throws Exception {
        Main main = new Main();

        if (saleType_cbox.getValue() != null && pizzaSize_cbox.getValue() != null && topping_cbox.getValue() != null && !qantity_txt.getText().isEmpty() && !name_txt.getText().isEmpty() ) {
            ((Node) event.getSource()).getScene().getWindow().hide();  //hide current window

          if (saleType_cbox.getValue().equals("Delievery")) {
              main.createWindow("Delievery_2_2_1.fxml");
          }
         else if (saleType_cbox.getValue().equals("Take Out")) {
              main.createWindow("Takeout_2_2_2.fxml");
         }
        else if (saleType_cbox.getValue().equals("In House")) {
                main.createWindow("Payment_3.fxml");
          }
        }
     else{
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setContentText("Please select and enter values");
            alert.showAndWait();
        }

        System.out.println("Sale type is: " +getSaleType());

     }

    public Object getSaleType(){
        return saleType_cbox.getValue();
    }

    public void getOrder(int id){}
}
