package mx.edu.utez.manosmexicanas.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.manosmexicanas.dao.CarritoDao;
import mx.edu.utez.manosmexicanas.dao.DetallePedidoDao;
import mx.edu.utez.manosmexicanas.dao.PedidoDao;
import mx.edu.utez.manosmexicanas.model.Producto;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "PedidosDetalleController", value = "/Profile/pedido")
public class PedidosDetalleController extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idString = req.getParameter("id");
        int idUser = Integer.parseInt(idString);

        String idDomicilioString = req.getParameter("direccion");
        int idDomicilio = Integer.parseInt(idDomicilioString);

        String totalString = req.getParameter("totalCompra");
        double totalCompra = Double.parseDouble(totalString);
        PedidoDao pedidoDao = new PedidoDao();
        boolean resultPedido = pedidoDao.insertPedido(idUser,totalCompra,idDomicilio);

        int idPedido = pedidoDao.lastPedidoUser(idUser);

        CarritoDao carroDao = new CarritoDao();
        ArrayList<Producto> productos = carroDao.showCarrito(idUser);
        DetallePedidoDao detallePedidoDao = new DetallePedidoDao();

        boolean resultDetallePedido = false;
        for (Producto p : productos){
            resultDetallePedido = detallePedidoDao.insertDetallePedido(idPedido,p.getId(),p.getPrecio(),
                    p.getImage().getColor().getId());

            if (!resultDetallePedido){
                break;
            }
        }

        if (resultDetallePedido) {
            resp.sendRedirect(req.getContextPath() + "/Profile/mesaje.jsp");
        }else {
            resp.setStatus(500);
        }




    }
}
