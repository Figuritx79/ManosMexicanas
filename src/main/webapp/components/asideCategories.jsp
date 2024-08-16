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
<section class="flex flex-col lg:flex-row w-full">
    <aside class="lg:w-1/4 w-full bg-bg100 p-4 h-screen shadow-lg">
        <p class="text-gray-600">
        <%if(total > 0){%>
           <%=total%> Productos
        <%}%>
        <% if(total == 0){ %>
           0 Productos
        <% } %>

        </p>
        <div class="mt-4 flex-row">
            <h3>
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"  data-id="34"><polygon points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3"></polygon></svg>

                Filtrar
            </h3>
        </div>
        <h2 class="text-2xl font-bold mb-4">Categorías</h2>
        <ul class="space-y-2">
            <li><a href="#" class="text-gray-700 hover:text-gray-900">Animado</a></li>
            <li><a href="#" class="text-gray-700 hover:text-gray-900">Comida</a></li>
            <li><a href="#" class="text-gray-700 hover:text-gray-900">Artistas</a></li>
            <li><a href="#" class="text-gray-700 hover:text-gray-900">Ropa</a></li>
        </ul>
    </aside>
    <div class="lg:w-3/4 w-full  p-4 h-screen drop-shadow-2xl">

    </div>
</section>