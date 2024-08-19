package mx.edu.utez.manosmexicanas.dao;

import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PedidoDao {
    public boolean insertPedido(int idUser,double total, int domicilio){
        var query = "CALL insertPedido(?,?,?)";
        var flag = false;
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query)){
            ps.setInt(1,idUser);
            ps.setDouble(2,total);
            ps.setDouble(3,domicilio);
            if(ps.executeUpdate() > 0){
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }

    public int lastPedidoUser(int idUser){
        var query = "CALL lastPedidoUser(?)";
        int idPedido = 0;
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query)){
            ps.setInt(1,idUser);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                idPedido = rs.getInt("id");
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return idPedido;

    }
}
