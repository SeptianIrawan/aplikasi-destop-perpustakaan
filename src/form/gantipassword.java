/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package form;
import Koneksi.KoneksiDB;
import form.login.Session;
import form.register.PasswordHash;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author oc
 */
public class gantipassword extends javax.swing.JFrame {
     public Connection con;
    public Statement stat;
    public ResultSet rs;
    public PreparedStatement pstmt;
    public String sql, tgl="";
    /**
     * Creates new form gantipassword
     */
    public gantipassword() {
        initComponents();
        setLocationRelativeTo(null);
        KoneksiDB db = new KoneksiDB();
        db.koneksiperpus();
        con=db.con;
        stat=db.stat;
        rs=db.rs;
        pstmt=db.pstmt;
        
      
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        passwordlama = new javax.swing.JPasswordField();
        jLabel6 = new javax.swing.JLabel();
        passwordbaru = new javax.swing.JPasswordField();
        jLabel7 = new javax.swing.JLabel();
        konfirmasipassword = new javax.swing.JPasswordField();
        jLabel8 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        getContentPane().add(passwordlama, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 80, 280, -1));

        jLabel6.setFont(new java.awt.Font("Segoe UI", 0, 10)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(255, 255, 255));
        jLabel6.setText("Password Lama");
        getContentPane().add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 60, -1, -1));
        getContentPane().add(passwordbaru, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 130, 280, -1));

        jLabel7.setFont(new java.awt.Font("Segoe UI", 0, 10)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(255, 255, 255));
        jLabel7.setText("Password Baru");
        getContentPane().add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 110, -1, -1));
        getContentPane().add(konfirmasipassword, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 190, 280, -1));

        jLabel8.setFont(new java.awt.Font("Segoe UI", 0, 10)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(255, 255, 255));
        jLabel8.setText("Konfirmasi Pasword");
        getContentPane().add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 170, -1, -1));

        jButton1.setBackground(new java.awt.Color(255, 193, 7));
        jButton1.setText("Ubah Password");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 230, -1, 40));

        jButton2.setBackground(new java.awt.Color(204, 204, 255));
        jButton2.setText("Kembali");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 233, -1, 40));

        jPanel1.setBackground(new java.awt.Color(0, 0, 204));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 400, 300));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
         gantiPassword();        // TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
              // Membuat instance dari FrameB
    Dashboard pindah = new Dashboard();
    
    // Menampilkan FrameB
    pindah.setVisible(true);
    
    // Menutup FrameA (frame saat ini)
    this.dispose();          // TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(gantipassword.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(gantipassword.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(gantipassword.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(gantipassword.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new gantipassword().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPasswordField konfirmasipassword;
    private javax.swing.JPasswordField passwordbaru;
    private javax.swing.JPasswordField passwordlama;
    // End of variables declaration//GEN-END:variables

    private void gantiPassword() {
        // Ambil username dari session
        String username = Session.getUsername();
        String passwordLama = new String(passwordlama.getPassword());
        String passwordBaru = new String(passwordbaru.getPassword());
        String konfirmasiPassword = new String(konfirmasipassword.getPassword());

        try {
            // Validasi input kosong
            if (passwordLama.trim().isEmpty()) {
                JOptionPane.showMessageDialog(null, "Password lama tidak boleh kosong!");
                return;
            }
            if (passwordBaru.trim().isEmpty()) {
                JOptionPane.showMessageDialog(null, "Password baru tidak boleh kosong!");
                return;
            }
            if (konfirmasiPassword.trim().isEmpty()) {
                JOptionPane.showMessageDialog(null, "Konfirmasi password tidak boleh kosong!");
                return;
            }

            // Cek apakah password baru dan konfirmasi password sama
            if (!passwordBaru.equals(konfirmasiPassword)) {
                JOptionPane.showMessageDialog(null, "Password baru dan konfirmasi password tidak sama!");
                return;
            }

            // Hash password lama dan baru
            String hashedPasswordLama = PasswordHash.hashPassword(passwordLama);
            String hashedPasswordBaru = PasswordHash.hashPassword(passwordBaru);

            // Query untuk memeriksa password lama
            sql = "SELECT * FROM akun WHERE username = ?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, username);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                // Ambil password yang tersimpan di database
                String storedPassword = rs.getString("password");

                // Verifikasi password lama
                if (hashedPasswordLama.equals(storedPassword)) {
                    // Password lama benar, lanjutkan untuk mengganti password

                    // SQL untuk update password baru
                    sql = "UPDATE akun SET password = ? WHERE username = ?";
                    pstmt = con.prepareStatement(sql);
                    pstmt.setString(1, hashedPasswordBaru);  // Password baru yang sudah di-hash
                    pstmt.setString(2, username);  // Username yang sedang login

                    // Eksekusi update password
                    pstmt.executeUpdate();

                    // Tampilkan pesan sukses
                    JOptionPane.showMessageDialog(null, "Password berhasil diganti!");
                    this.dispose(); // Tutup form ganti password setelah berhasil
                } else {
                    JOptionPane.showMessageDialog(null, "Password lama salah!");
                }
            } else {
                JOptionPane.showMessageDialog(null, "Username tidak ditemukan!");
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Gagal mengganti password: " + e.getMessage());
        } finally {
            // Tutup ResultSet dan PreparedStatement jika sudah tidak digunakan
            try {
                if (rs != null) rs.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (pstmt != null) pstmt.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
