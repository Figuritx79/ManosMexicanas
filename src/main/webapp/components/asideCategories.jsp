<%@ page import="mx.edu.utez.manosmexicanas.dao.ProductDao" %><%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 8/15/24
  Time: 5:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    ProductDao productDao = new ProductDao();
    int total = productDao.totalProducts();
%>
<aside class="lg:w-64 w-24  bg-background border-r border-muted">
    <div class="space-y-6">
        <div>
            <h3>
                <%= total > 0 ? total + " Productos" : "0 Productos" %>
            </h3>
        </div>
        <div>
            <p class="text-primary-100">Filtros</p>
        </div>
        <div>
            <h3 class="text-primary-100 font-semibold">Animados</h3>
        </div>
        <div>
            <h3 class="text-primary-100 font-semibold">Comida</h3>
        </div>
        <div>
            <h3 class="text-primary-100 font-semibold">Artistas</h3>
        </div>
        <div>
            <h3 class="text-primary-100 font-semibold">Ropa</h3>
        </div>
    </div>
</aside>