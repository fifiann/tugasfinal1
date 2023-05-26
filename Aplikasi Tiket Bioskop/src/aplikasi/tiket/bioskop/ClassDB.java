/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplikasi.tiket.bioskop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class ClassDB {
    private static Connection koneksi;
    public static Connection getKoneksi() {
        if (koneksi == null) {
            try {
                String url = "jdbc:mysql://localhost/db_tiketBioskop";
                String user = "root";
                String password = "";
                /*DriverManager.registerDriver(new com.mysql.jdbc.Driver());*/
                koneksi = DriverManager.getConnection(url,user,password);
//                JOptionPane.showMessageDialog(null, "Koneksi Berhasil", "Informasi", JOptionPane.INFORMATION_MESSAGE);
                
            } catch (SQLException t) {
//                JOptionPane.showMessageDialog(null, "Error membuat Koneksi", "Perhatian", JOptionPane.ERROR_MESSAGE);
                
            }
        }
        return koneksi;
        
    }
}
