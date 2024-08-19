package mx.edu.utez.manosmexicanas.dao;

import mx.edu.utez.manosmexicanas.model.Pedido;
import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;

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
    public ArrayList<Pedido> listPedido(int idUser){
        ArrayList<Pedido> pedidos = new ArrayList<>();
        var query = "CALL getPedidos(?) ";
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query)){
            ps.setInt(1,idUser);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Pedido pedido = new Pedido();
                Timestamp timestamp = rs.getTimestamp("fecha");
                LocalDateTime fecha = timestamp.toLocalDateTime();
                pedido.setFecha(fecha);
                pedido.setTotal(rs.getDouble("total"));
                pedido.setId(rs.getInt("id"));
                pedidos.add(pedido);
            }
            rs.close();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return pedidos;
    }
}
