package mx.edu.utez.manosmexicanas.dao;

import mx.edu.utez.manosmexicanas.model.Color;
import mx.edu.utez.manosmexicanas.model.Producto;
import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

public class DetallePedidoDao {
    public boolean insertDetallePedido(int idPedido, int idProducto,double precio, int color){
        var query = "CALL insertDetallePedido (?,?,?,?)";
        boolean flag = false;
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query)){
            ps.setInt(1,idPedido);
            ps.setInt(2,idProducto);
            ps.setDouble(3,precio);
            ps.setInt(4, color);
            if (ps.executeUpdate() > 0 ){
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
}
