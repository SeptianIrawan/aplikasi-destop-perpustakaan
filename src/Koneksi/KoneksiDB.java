package Koneksi;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

public class KoneksiDB {
    public Connection con;
    public Statement stat;
    public ResultSet rs;
    public PreparedStatement pstmt;
    public String sql="";

    public void koneksiperpus () {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/dbperpus", "root","");
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Koneksi errror" + e);
        }
    }
}