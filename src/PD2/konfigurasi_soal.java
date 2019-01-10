/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PD2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author eca
 */
public class konfigurasi_soal {

    Connection con;
    Statement stat;
    ResultSet rs;
    String sql;

    public konfigurasi_soal() {
        koneksi kon = new koneksi();
        kon.connect();
        con = kon.con;
        stat = kon.stm;
    }

    public String isi_soal() throws SQLException {
        String isi = "";
        sql = "SELECT soal from soal where id_soal = '" + 1 + "'";
        rs = stat.executeQuery(sql);
        if (rs.next()) {
            isi = rs.getString("soal");
            return isi;
        }else{
            return isi;
        }
    }
    
    public String option_A() throws SQLException{
        String A = "";
        sql = "SELECT A from pilihan where id_soal = '" + 1 + "'";
        rs = stat.executeQuery(sql);
        if (rs.next()) {
            A = rs.getString("A");
            return A;
        }else{
            return A;
        }
    }
    
    public String option_B() throws SQLException{
        String B = "";
        sql = "SELECT B from pilihan where id_soal = '" + 1 + "'";
        rs = stat.executeQuery(sql);
        if (rs.next()) {
            B = rs.getString("B");
            return B;
        }else{
            return B;
        }
    }
    
    public String option_C() throws SQLException{
        String C = "";
        sql = "SELECT C from pilihan where id_soal = '" + 1 + "'";
        rs = stat.executeQuery(sql);
        if (rs.next()) {
            C = rs.getString("C");
            return C;
        }else{
            return C;
        }
    }
    
    public String option_D() throws SQLException{
        String D = "";
        sql = "SELECT D from pilihan where id_soal = '" + 1 + "'";
        rs = stat.executeQuery(sql);
        if (rs.next()) {
            D = rs.getString("D");
            return D;
        }else{
            return D;
        }
    }

}
