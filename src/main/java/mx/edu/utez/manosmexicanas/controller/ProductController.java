package mx.edu.utez.manosmexicanas.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import mx.edu.utez.manosmexicanas.dao.ProductDao;
import mx.edu.utez.manosmexicanas.model.Categoria;
import mx.edu.utez.manosmexicanas.model.Color;
import mx.edu.utez.manosmexicanas.model.Producto;
import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.UUID;

@MultipartConfig
@WebServlet(name="ProductController", value="/dashboard/productUp")
public class ProductController extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        ProductDao dao = new ProductDao();
        Producto p = dao.getOne(id);

        HttpSession sesion = req.getSession();
        sesion.setAttribute("producto", p);
        resp.sendRedirect("modificarProducto.jsp");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String idString = req.getParameter("id") ;
        int id = Integer.parseInt(idString);

        String nombre = req.getParameter("nombre");
        String descripcion = req.getParameter("des");

        String stockString  = req.getParameter("stock");
        int stock = Integer.parseInt(stockString);

        String precioString = req.getParameter("precio");
        double precio = Double.parseDouble(precioString);

        String tamanoString = req.getParameter("tama");
        int tamano = Integer.parseInt(tamanoString);

        String categoriaString = req.getParameter("cate");
        int categoria = Integer.parseInt(categoriaString);

        ProductDao productDao = new ProductDao();
        int enviarId = productDao.insertImage(id, nombre, precio,tamano,categoria,descripcion,stock);
        if (enviarId > 0){
            res.sendRedirect("image.jsp?id="+enviarId);

        }
        if (enviarId == 0){
            res.sendRedirect("productsAdmin.jsp?mensaje=No");
        }
    }
}



