/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package method;

import banco.BancoMySQL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *
 * @author Luan
 */
public class Method {
    
    private BancoMySQL banco;
    private Connection conn;
    private static Statement stmt;
    public Method() throws ClassNotFoundException, SQLException{
        banco = new BancoMySQL();
        conn = banco.getConn();
        stmt = conn.createStatement();
    }
    public void close() throws SQLException{
        stmt.close();
        conn.close();
    }
    public ResultSet selectAllClube() throws ClassNotFoundException, SQLException{
        String sql = "select * from clubes order by valor desc";
        ResultSet rs = stmt.executeQuery(sql);
        return rs;
    }
    public ResultSet selectRandomClube() throws ClassNotFoundException, SQLException{
        String sql = "SELECT * FROM clubes "+
                     " ORDER BY RAND() LIMIT 2;";
        ResultSet rs = stmt.executeQuery(sql);
        return rs;
    }
    public void insertValue(String win,String numLoser) throws SQLException{
        double num = (1/((1/Double.parseDouble(numLoser))*20));
        String sql = "update clubes "+ 
                     " set valor = valor + "+num+
                     " where id = "+win;
        stmt.executeUpdate(sql);
    }
    public void deleteValue(String loser,String numWin) throws SQLException{
        double num = (1/((1/Double.parseDouble(numWin))*20));
        String sql = "update clubes "+ 
                     " set valor = valor - "+num+
                     " where id = "+loser;
        stmt.executeUpdate(sql);
    }
    public double getDiferent(String num, String num2) throws SQLException{
        double dif = Double.parseDouble(num)-Double.parseDouble(num2);
        return Math.sqrt(dif*dif);
    }
}
