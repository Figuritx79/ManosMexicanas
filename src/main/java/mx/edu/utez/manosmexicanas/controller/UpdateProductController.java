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


@WebServlet(name="UpdateProductController", value="/dashboard/updateProducto")
public class UpdateProductController extends HttpServlet{


        protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
            String nombre = req.getParameter("nombre");
            String precioStr = req.getParameter("precio");
            String tamanoStr = req.getParameter("tamano");
            String stockStr = req.getParameter("stock");
            String descripcion = req.getParameter("descripcion");
            String colorIdStr = req.getParameter("color");
            String categoriaIdStr = req.getParameter("categoria");



            //Validar y convertir los parametros de entrada
            Double precio = null;
            Double tamano = null;
            Integer stock = null;
            Integer colorId = null;
            Integer categoriaId = null;

            try {
                if (precioStr != null && !precioStr.trim().isEmpty()) {
                    precio = Double.valueOf(precioStr.trim());
                }
                if (tamanoStr != null && !tamanoStr.trim().isEmpty()) {
                    tamano = Double.valueOf(tamanoStr.trim());
                }
                if (stockStr != null && !stockStr.trim().isEmpty()) {
                    stock = Integer.valueOf(stockStr.trim());
                }
                if (colorIdStr != null && !colorIdStr.trim().isEmpty()) {
                    colorId = Integer.valueOf(colorIdStr.trim());
                }
                if (categoriaIdStr != null && !categoriaIdStr.trim().isEmpty()) {
                    categoriaId = Integer.valueOf(categoriaIdStr.trim());
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
                res.sendRedirect("productsAdmin.jsp?error=invalidNumberFormat");
                return;
            }

            if (nombre == null || nombre.trim().isEmpty() || precio == null || tamano == null || descripcion == null || descripcion.trim().isEmpty() || stock == null || colorId == null || categoriaId == null) {
                res.sendRedirect("productsAdmin.jsp?error=missingParameters");
                return;
            }


            Producto p = new Producto();
            p.setNombre(nombre.trim());
            p.setPrecio(precio);
            p.setTamano(tamano);
            p.setDescripcion(descripcion.trim());
            p.setStock(stock);

            Color color = new Color();
            color.setId(colorId);
            p.setColor(color);

            Categoria categoria = new Categoria();
            categoria.setId(categoriaId);
            p.setCategoria(categoria);

            try (Connection conn = DbConnectionManager.getConnection()) {
                ProductDao productDao = new ProductDao();
                p.setId(Integer.parseInt(req.getParameter("id")));
                Boolean result = productDao.updateProduct(p);

                if (result) {
                    System.out.println("Producto guardado correctamente");
                    res.sendRedirect("productsAdmin.jsp");
                } else {
                    System.out.println("No se pudo registrar el producto");
                    res.sendRedirect("productsAdmin.jsp?error=insertFailed");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                res.sendRedirect("productsAdmin.jsp?error=sqlException");
            }
        }


    }


