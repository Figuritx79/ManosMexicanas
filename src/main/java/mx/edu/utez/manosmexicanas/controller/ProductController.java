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
@WebServlet(name="ProductController", value="/dashboard/registroProducto")
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
        String idtring = req.getParameter("id");
        int id = Integer.parseInt(idtring);
        String nombre = req.getParameter("nombre");
        String precioStr = req.getParameter("precio");
        String tamanoStr = req.getParameter("tamano");
        String stockStr = req.getParameter("stock");
        String descripcion = req.getParameter("descripcion");
        String categoriaIdStr = req.getParameter("categoria");


        //Validar y convertir los parametros de entrada
        Double precio = null;
        int tamano = 0;
        Integer stock = null;
        Integer colorId = null;
        Integer categoriaId = null;

        try {
            if (precioStr != null && !precioStr.trim().isEmpty()) {
                precio = Double.parseDouble(precioStr.trim());
            }
            if (tamanoStr != null && !tamanoStr.trim().isEmpty()) {
                tamano = Integer.parseInt(tamanoStr.trim());
            }
            if (stockStr != null && !stockStr.trim().isEmpty()) {
                stock = Integer.parseInt(stockStr.trim());
            }

            if (categoriaIdStr != null && !categoriaIdStr.trim().isEmpty()) {
                categoriaId = Integer.parseInt(categoriaIdStr.trim());
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            res.sendRedirect("productsAdmin.jsp?error=invalidNumberFormat");
            return;
        }
        ProductDao productDao = new ProductDao();
        int enviarId = productDao.insertImage(id, nombre, precio,tamano,categoriaId,descripcion,stock);
        if (enviarId > 0){
            res.sendRedirect("image.jsp?id="+enviarId);

        }
        if (enviarId == 0){
            res.sendRedirect("productsAdmin.jsp?mensaje=No");
        }
    }
}



