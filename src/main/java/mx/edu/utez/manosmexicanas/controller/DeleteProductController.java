package mx.edu.utez.manosmexicanas.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mx.edu.utez.manosmexicanas.dao.ProductDao;

import java.io.IOException;


@WebServlet(name = "DeleteProductController", value = "/dashboard/deleteProduct")
public class DeleteProductController extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        ProductDao dao = new ProductDao();
        HttpSession sesion = req.getSession();
        boolean result = dao.deleteProduct(id);
        if(result){
            resp.sendRedirect("productsAdmin.jsp?status=ok");
            sesion.setAttribute("mensaje", "Usuario eliminado fisicamente con exito");
        }else{
            sesion.setAttribute("mensaje", "Fallo la eliminacion fisica");
            resp.sendRedirect("productsAdmin.jsp?status=bad");
        }

    }
}
