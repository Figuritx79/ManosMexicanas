package mx.edu.utez.manosmexicanas.controller;

import com.mysql.cj.exceptions.MysqlErrorNumbers;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.manosmexicanas.dao.UserDao;

import java.io.IOException;
import java.util.function.Function;
import java.util.function.Predicate;

@WebServlet(name = "UpdatePasswordController",value = "/restore")
public class UpdatePasswordController  extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int  user = Integer.parseInt(req.getParameter("user"));
        String pass = req.getParameter("pass");
        UserDao userDao = new UserDao();

        var result = userDao.updatePassword(user,pass);

        if (result){
            var session = req.getSession(false);
            var mensaje = "Se actualizo con exito tus crendiales, por favor iniciar sesion";
            session.setAttribute("exito", mensaje);
            res.setStatus(200);
            res.sendRedirect("index.jsp");
        }

        if (!result){
            var session = req.getSession(false);
            var mensaje = "No se puedo restablecer sus credenciales, por favor intentelo de nuevo";
            session.setAttribute("fracaso",mensaje);
            res.sendRedirect("mensaje.jsp");
        }
    }
}
