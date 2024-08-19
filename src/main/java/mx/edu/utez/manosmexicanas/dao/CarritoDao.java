package mx.edu.utez.manosmexicanas.dao;

import mx.edu.utez.manosmexicanas.model.Color;
import mx.edu.utez.manosmexicanas.model.Image;
import mx.edu.utez.manosmexicanas.model.Producto;
import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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

    public ArrayList<Producto> showCarrito(int idUser){
        var query = "CALL getCarrito(?)";
        ArrayList<Producto>productos = new ArrayList<>();
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);){
            ps.setInt(1,idUser);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Producto producto = new Producto();
                Image image = new Image();
                Color color = new Color();
//                INSERTS
                color.setId(rs.getInt("idColor"));
                producto.setNombre(rs.getString("producto"));
                producto.setId(rs.getInt("idProducto"));
                producto.setPrecio(rs.getDouble("precio"));
                image.setUrl(rs.getString("url"));
                image.setColor(color);
                producto.setImage(image);
                productos.add(producto);
            }
        } catch (SQLException e) {
           e.printStackTrace();
        }
        return productos;
    }
}
