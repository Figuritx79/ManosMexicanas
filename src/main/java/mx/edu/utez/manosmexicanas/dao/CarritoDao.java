package mx.edu.utez.manosmexicanas.dao;

import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CarritoDao {

    public int getOneCarrito(int id){
        var query = "CALL countCarrito(?)";
        var total = 0;
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                total = rs.getInt("total");
            }
            rs.close();
        } catch (SQLException e) {
           e.printStackTrace();
        }
        return total;
    }

    public boolean insertCarrito(int idProducto,int color, int idCliendte){
        boolean flag = false;
        var query = "CALL insertCarrito(?,?,?)";
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps  = conn.prepareStatement(query)) {
            ps.setInt(1,color);
            ps.setInt(2,idProducto);
            ps.setInt(3,idCliendte);
            if(ps.executeUpdate() > 0){
                flag = true;
            }

        } catch (SQLException e) {
           e.printStackTrace();
        }
        return flag;
    }
}
