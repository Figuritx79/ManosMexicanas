package mx.edu.utez.manosmexicanas.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mx.edu.utez.manosmexicanas.dao.UserDao;
import mx.edu.utez.manosmexicanas.model.Usuario;

import java.io.IOException;

@WebServlet(name = "LoginController",value = "/login")
public class LoginController extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String correo = req.getParameter("correo");
        String pass  = req.getParameter("pass");
        UserDao userDao = new UserDao();
        Usuario user = userDao.searchUser(correo,pass);

        if(user.getId() == 0){
            resp.setStatus(401);
        }
        HttpSession session= req.getSession();
        session.setMaxInactiveInterval(30 * 60);
        session.setAttribute("User",user);
        resp.sendRedirect("index.jsp");
    }

}
