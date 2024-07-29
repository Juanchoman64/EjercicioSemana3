import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;


public class Consulta_Clientes extends  JFrame{

    // Declaración de las variables y objetos que van dentro de Jpanel, listas, labels, combobox, entre otros.
    private JPanel panel;
    private JButton btnConsulta;
    private JLabel lblTitulo;
    private JList listCargo;
    private JLabel lblInfo;
    private JComboBox boxCargo;


    // Variable para realizar la conexión con la base de datos.
    Connection con;

    //Variable para trabajar las sentencias en sql, el modelo de la lista y variable de tipo ResulSet donde se almacena el resultado de la busqueda
   DefaultListModel model = new DefaultListModel();
   PreparedStatement ps;
   ResultSet result;


    // Método para conectar con la base de datos sql, incluye la url de la base de datos, lo que tenga que ver con Sql debe ir con try-catch
    public void conectarBaseDatos(){
        try{
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbSemana3","root","Juanalvarez1$%");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    // Método de botón consulta, con este método se puede reciclar código si se desea anexar mas botones para crear otras búsquedas, cambiando el método de busqueda ejecutado.
    public Consulta_Clientes(){
        btnConsulta.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    generarLista();
                } catch (SQLException ex) {
                    throw new RuntimeException(ex);
                }
            }
        });
    }

    //Método para generar la lista en el Jlist mediante la busqueda del parámetro de texto que hay en el comboBox.
    public void generarLista() throws SQLException {
        conectarBaseDatos();
        listCargo.setModel(model);
        String cargoCombo = boxCargo.getSelectedItem().toString();
        ps = con.prepareStatement("SELECT nombre,cargo FROM Clientes WHERE cargo=?");
        ps.setString(1, cargoCombo);
        result = ps.executeQuery();
        model.removeAllElements();

        while(result.next()){
            model.addElement(result.getString(1)+ " " +  result.getString(2)+ " ");
        }
    }

    // método main
    public static void main(String[] args) {
        Consulta_Clientes cliente = new Consulta_Clientes();
        cliente.setContentPane(new Consulta_Clientes().panel);
        cliente.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        cliente.setVisible(true);
        cliente.pack();
    }

}


