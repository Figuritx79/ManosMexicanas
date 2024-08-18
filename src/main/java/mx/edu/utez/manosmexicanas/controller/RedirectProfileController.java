package mx.edu.utez.manosmexicanas.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "RedirectProfileController",value = "/profile")
public class RedirectProfileController extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session == null){
            resp.sendRedirect("login.jsp");
        }
        assert session != null;
        int idCliente = (int) session.getAttribute("id");
        var requestContext = req.getContextPath();
        resp.sendRedirect(requestContext+"/Profile/profile.jsp?id="+idCliente);

    }
}
