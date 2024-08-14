package mx.edu.utez.manosmexicanas.dao;

import mx.edu.utez.manosmexicanas.model.Pedido;
import mx.edu.utez.manosmexicanas.model.Usuario;
import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class OrdersDao {
    public ArrayList<Pedido> getAll() {
        ArrayList<Pedido> lista = new ArrayList<>();
        String query = "select u.id, u.nombre, p.cantidad, p.total, p.fecha from usuario u join pedido p on u.id=p.idUsuario";
        try(Connection con = DbConnectionManager.getConnection(); PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery();) {
            while (rs.next()) {
                Pedido p = new Pedido();

                Usuario u = new Usuario();
                u.setId(rs.getInt("id"));
                u.setNombre(rs.getString("nombre"));
                p.setUsuario(u);

                p.setCantidad(rs.getInt("cantidad"));
                p.setTotal(rs.getDouble("total"));
                p.setFecha(rs.getTimestamp("fecha").toLocalDateTime());

                lista.add(p);


            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }
}
