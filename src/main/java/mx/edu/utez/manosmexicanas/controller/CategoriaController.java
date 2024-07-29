package mx.edu.utez.manosmexicanas.controller;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.manosmexicanas.dao.ProductDao;
import mx.edu.utez.manosmexicanas.model.Categoria;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CategoriaController",value ="/dashboard/getCategoria")
public class CategoriaController extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ProductDao dao = new ProductDao();
        ArrayList<Categoria> categorias = dao.getCategoria();
        Gson json = new Gson();

        String jsonString = json.toJson(categorias);
        res.setContentType("application/json");
        res.getWriter().write(jsonString);
    }
}