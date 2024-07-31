package mx.edu.utez.manosmexicanas.dao;

import mx.edu.utez.manosmexicanas.model.Categoria;
import mx.edu.utez.manosmexicanas.model.Color;
import mx.edu.utez.manosmexicanas.model.Producto;
import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDao {

    public ArrayList<Categoria> getCategoria(){
        String query = "SELECT * FROM categoria";
        ArrayList<Categoria>  categorias = new ArrayList<>();
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery()) {
            while (rs.next()){
                Categoria categoria = new Categoria();

                categoria.setId(rs.getInt("id"));
                categoria.setNombre(rs.getString("nombre"));
                categorias.add(categoria);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return categorias;
    }

    public ArrayList<Color> getColors(){
        String query = "SELECT * FROM color;";
        ArrayList<Color> arrayList = new ArrayList<>();
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs= ps.executeQuery()){
            while (rs.next()){
                Color color = new Color();
                color.setId(rs.getInt("id"));
                color.setNombre(rs.getString("nombre"));
                arrayList.add(color);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return arrayList;
    }

    public ArrayList<Producto> getAll() {
        ArrayList<Producto> lista = new ArrayList<>();
        String query = "SELECT p.id, p.nombre, p.precio, p.tamaño, p.stock,p.descripcion, c.nombre as color, ca.nombre as categoria from categoria ca join producto p on p.categoria=ca.id JOIN color c ON p.color = c.id";
        try(Connection con = DbConnectionManager.getConnection(); PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery();) {
            while (rs.next()) {
                Producto p = new Producto();
                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setPrecio(rs.getDouble("precio"));
                p.setTamano(rs.getDouble("tamaño"));
                p.setStock(rs.getInt("stock"));
                p.setDescripcion(rs.getString("descripcion"));

                Color color = new Color();
                color.setId(rs.getInt("id"));
                color.setNombre(rs.getString("color"));
                p.setColor(color);

                Categoria categoria = new Categoria();
                categoria.setId(rs.getInt("id"));
                categoria.setNombre(rs.getString("categoria"));
                p.setCategoria(categoria);


                lista.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }


    public boolean insertProduct(Producto p) {
        boolean flag = false;
        String query = "insert into producto(nombre,precio,tamaño,descripcion,stock, color, categoria, imagen) values (?,?,?,?,?,?,?,?);";
        try (Connection con = DbConnectionManager.getConnection();
             PreparedStatement ps = con.prepareStatement(query);){

            ps.setString(1, p.getNombre());
            ps.setDouble(2, p.getPrecio());
            ps.setDouble(3, p.getTamano());
            ps.setString(4, p.getDescripcion());
            ps.setInt(5, p.getStock());
            ps.setInt(6, p.getColor().getId());
            ps.setInt(7, p.getCategoria().getId());
            ps.setString(8, p.getImagen());

            if (ps.executeUpdate() > 0) {
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
}
