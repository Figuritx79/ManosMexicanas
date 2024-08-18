package mx.edu.utez.manosmexicanas.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mx.edu.utez.manosmexicanas.dao.CarritoDao;
import mx.edu.utez.manosmexicanas.model.Usuario;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


@WebServlet(name = "AddCarritoController", value = "/addCarrito")
public class AddCarritoController extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session == null){
            resp.sendRedirect("login.jsp");
        }
        assert session != null;
        int idCliente = (int) session.getAttribute("id");
        CarritoDao carritoDao = new CarritoDao();

        StringBuilder builder = new StringBuilder();
        BufferedReader reader = req.getReader();
        String line;
        while ((line = reader.readLine()) != null) {
            builder.append(line);
        }
        String json = builder.toString();
        Gson gson = new Gson();
        JsonObject jsonObject = gson.fromJson(json, JsonObject.class);
        int idProduct = jsonObject.get("idProduct").getAsInt();
        int idColor = jsonObject.get("color").getAsInt();

        StringBuilder mensaje = new StringBuilder();
        boolean resultInsert = carritoDao.insertCarrito(idProduct,idColor,idCliente);

        if (resultInsert){
            mensaje.append("Revisa tu carrito o siguie navegando en nuestra pagina");
        }
        if(!resultInsert){
            mensaje.append("Error, por favor realiza la operacion en un rato");
        }
        Map<String,String> valorJson = new HashMap<>();
        valorJson.put("mensaje", mensaje.toString());

        Gson gsonResonse = new Gson();
        String respuesta  = gsonResonse.toJson(valorJson);
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write(respuesta);
    }
}
