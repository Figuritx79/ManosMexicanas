package mx.edu.utez.manosmexicanas.dao;

import mx.edu.utez.manosmexicanas.model.*;
import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDao {


    public boolean deleteProduct(int id){
        var query = "CALL deleteProduct(?);";
        var flag = false;
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query)){
            ps.setInt(1,id);
            if (ps.executeUpdate() > 0){
                flag = true;
            }
        } catch (SQLException e) {
           e.printStackTrace();
        }
        return flag;
    }

    public Producto getOne(int id) {
        Producto p = new Producto();
        var query = "CALL getOne(?);";
        try (Connection conn = DbConnectionManager.getConnection();
        PreparedStatement ps = conn.prepareStatement(query)){
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setPrecio(rs.getDouble("precio"));
                p.setTamano(rs.getDouble("tamano"));
                p.setStock(rs.getInt("stock"));
                p.setDescripcion(rs.getString("descripcion"));
                Categoria categoria = new Categoria();
                categoria.setId(rs.getInt("categoria"));
                categoria.setNombre(rs.getString("nombreCa"));
                p.setCategoria(categoria);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return p;
    }

    public boolean updateProduct(Producto p) {
        boolean flag = false;
        String query = "UPDATE producto SET nombre = ?, precio = ?, tamano = ?, descripcion = ?, stock = ?, color = ?, categoria = ? WHERE id = ?;";
        try (Connection con = DbConnectionManager.getConnection();
             PreparedStatement ps = con.prepareStatement(query);) {

            ps.setString(1, p.getNombre());
            ps.setDouble(2, p.getPrecio());
            ps.setDouble(3, p.getTamano());
            ps.setString(4, p.getDescripcion());
            ps.setInt(5, p.getStock());
            ps.setInt(6, p.getColor().getId());
            ps.setInt(7, p.getCategoria().getId());
            ps.setInt(9, p.getId());

            if (ps.executeUpdate() > 0) {
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public ArrayList<Producto> getProducto() {
        String query = "select nombre, descripcion, imagen from producto";
        ArrayList<Producto> list = new ArrayList<>();
        try (Connection conn = DbConnectionManager.getConnection();
             PreparedStatement ps = conn.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Producto p = new Producto();
                p.setNombre(rs.getString("nombre"));
                p.setDescripcion(rs.getString("descripcion"));
                p.setImagen(rs.getString("imagen"));

                list.add(p);
            }

        } catch (SQLException e) {
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

    public ArrayList<Categoria> getCategoria() {
        String query = "SELECT * FROM categoria;";
        ArrayList<Categoria> categorias = new ArrayList<>();
        try (Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
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

    public ArrayList<Color> getColors() {
        String query = "SELECT * FROM color;";
        ArrayList<Color> arrayList = new ArrayList<>();
        try (Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
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
        var query = "SELECT * FROM productAll;";
        try (Connection con = DbConnectionManager.getConnection(); PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery();) {
            while (rs.next()) {
                Producto producto = new Producto();
                producto.setId(rs.getInt("id"));
                producto.setNombre(rs.getString("nombre"));
                producto.setPrecio(rs.getDouble("precio"));
                producto.setStock(rs.getInt("stock"));
                producto.setTamano(rs.getInt("tamano"));
                producto.setDescripcion(rs.getString("descripcion"));
//
                Color color = new Color();
                color.setNombre(rs.getString("color"));
//
                producto.setColor(color);
                lista.add(producto);
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
             PreparedStatement ps = con.prepareStatement(query);) {

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

    public ArrayList<Producto> randProducts() {
        var query = "SELECT * FROM randomProduct";
        ArrayList<Producto> productos = new ArrayList<>();
        try (Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
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

    public Producto getOneById(int id) {
        var query = "CALL getOneProduct(?);";
        Producto producto = new Producto();
        Image image = new Image();
        Color color = new Color();
        try (Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
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

    public int insertImage(int id, String nombre, double precio, int tamano, int categoria, String descripcio, int stock) {
        var idReturn = 0;
        var query = "CALL insertProduct(?,?,?,?,?,?,?);";
        try (Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);) {
            ps.setInt(1, id);
            ps.setString(2, nombre);
            ps.setDouble(3, precio);
            ps.setInt(4, tamano);
            ps.setInt(5, categoria);
            ps.setString(6, descripcio);
            ps.setInt(7, stock);
            if (ps.executeUpdate() > 0) {
                idReturn = id;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return idReturn;
    }

    public boolean image(int idProducto, int idColor, String url) {
        var query = "CALL insertImage(?,?,?);";
        var flag = false;
        try (Connection connection = DbConnectionManager.getConnection(); PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, idProducto);
            ps.setInt(2, idColor);
            ps.setString(3, url);
            if (ps.executeUpdate() > 0) {
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;

    }

    public int totalProducts(){
        var query = "SELECT * FROM countProducts;";
        var total = 0;
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);) {
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                total = rs.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return total;
    }

    public ArrayList<Producto>paginationProduct(int pageOffset){
        var query = "CALL offsetPagination(?)";
        ArrayList<Producto> productos = new ArrayList<>();
        try (Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1,pageOffset);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                Producto producto = new Producto();
                Image image = new Image();

//                Categoria categoria = new Categoria();
//                INSERTAR LOS DATOS EN EL OBJETO
                producto.setNombre(resultSet.getString("nombre"));
                producto.setId(resultSet.getInt("id"));
                producto.setPrecio(resultSet.getDouble("precio"));
                producto.setDescripcion(resultSet.getString("descripcion"));
//                INSERTS EN PRODUCTO
//                categoria.setNombre(rs.getString("categoria"));
//                producto.setCategoria(categoria);
                image.setUrl(resultSet.getString("url"));
                producto.setImage(image);
                productos.add(producto);

            }
            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productos;
    }
}
