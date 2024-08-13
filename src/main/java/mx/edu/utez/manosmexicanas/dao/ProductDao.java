package mx.edu.utez.manosmexicanas.dao;

import mx.edu.utez.manosmexicanas.model.*;
import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDao {


    public boolean deleteProduct(int id) {
        boolean flag = false;
        String query = "delete from producto where id = ?";
        try {
            Connection con = DbConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1,id);
            if(ps.executeUpdate()>0){
                flag = true;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    public Producto getOne(int id){
        Producto p = new Producto();
        String query = "SELECT p.id, p.nombre, p.precio, p.tamaño, p.stock,p.descripcion, c.nombre as color, ca.nombre as categoria from categoria ca join producto p on p.categoria=ca.id JOIN color c ON p.color = c.id where p.id=?";
        try {
            Connection con = DbConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1,id);

            ResultSet rs = ps.executeQuery();
            if(rs.next()){
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
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return p;
    }

    public boolean updateProduct(Producto p) {
        boolean flag = false;
        String query = "UPDATE producto SET nombre = ?, precio = ?, tamaño = ?, descripcion = ?, stock = ?, color = ?, categoria = ?, imagen = ? WHERE id = ?;";
        try (Connection con = DbConnectionManager.getConnection();
             PreparedStatement ps = con.prepareStatement(query);) {

            ps.setString(1, p.getNombre());
            ps.setDouble(2, p.getPrecio());
            ps.setDouble(3, p.getTamano());
            ps.setString(4, p.getDescripcion());
            ps.setInt(5, p.getStock());
            ps.setInt(6, p.getColor().getId());
            ps.setInt(7, p.getCategoria().getId());
            ps.setString(8, p.getImagen());
            ps.setInt(9, p.getId());

            if (ps.executeUpdate() > 0) {
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public ArrayList<Producto> getProducto(){
        String query = "select nombre, descripcion, imagen from producto";
        ArrayList<Producto> list = new ArrayList<>();
        try(Connection conn = DbConnectionManager.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Producto p = new Producto();
                p.setNombre(rs.getString("nombre"));
                p.setDescripcion(rs.getString("descripcion"));
                p.setImagen(rs.getString("imagen"));

                list.add(p);
            }

        }catch (SQLException e){
            throw new RuntimeException(e);
        }

        return list;
    }

    public int getNextId() {
        String query = "select max(id) as max_id from producto;";
        try (Connection conn = DbConnectionManager.getConnection();
             PreparedStatement ps = conn.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                return rs.getInt("max_id") + 1;
            } else {
                return 1;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public ArrayList<Categoria> getCategoria(){
        String query = "SELECT * FROM categoria;";
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
        String query = "SELECT p.id, p.nombre, p.precio, p.tamaño, p.stock,p.descripcion, c.nombre as color, ca.nombre as categoria from categoria ca join producto p on p.categoria=ca.id JOIN color c ON p.color = c.id;";
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
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;

    }
    public int countProducts(){
        var query = "SELECT * FROM countProducts;";
        int total = 0;
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);
        ResultSet rs = ps.executeQuery(); ) {
            if (rs.next()){
                 total = rs.getInt("Total");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return total;
    }

    public  ArrayList<Producto> randProducts(){
        var query = "SELECT * FROM randomProduct";
        ArrayList<Producto> productos = new ArrayList<>();
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Image image = new Image();
                Producto producto = new Producto();
//                Categoria categoria = new Categoria();
//                INSERTAR LOS DATOS EN EL OBJETO
                producto.setId(rs.getInt("id"));
                producto.setNombre(rs.getString("nombre"));
                producto.setPrecio(rs.getDouble("precio"));
                producto.setDescripcion(rs.getString("descripcion"));
//                INSERTS EN PRODUCTO
//                categoria.setNombre(rs.getString("categoria"));
//                producto.setCategoria(categoria);
                image.setUrl(rs.getString("url"));
                producto.setImage(image);
                productos.add(producto);

            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productos;
    }
    public Producto getOneById(int id){
        var query = "CALL getOneProduct(?);";
        Producto producto = new Producto();
        Image image = new Image();
        Color color = new Color();
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                image.setUrl(rs.getString("url"));
                color.setId(rs.getInt("idColor"));
                color.setNombre(rs.getString("color"));
                producto.setImage(image);
                producto.setColor(color);
               producto.setId(rs.getInt("idProducto"));
               producto.setNombre(rs.getString("nombre"));
               producto.setPrecio(rs.getDouble("precio"));
               producto.setDescripcion(rs.getString("descripcion"));
               producto.setTamano(rs.getInt("tamano"));
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return producto;
    }
}
