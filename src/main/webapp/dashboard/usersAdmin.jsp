<%@ page import="mx.edu.utez.manosmexicanas.dao.UserDao" %>
<%@ page import="mx.edu.utez.manosmexicanas.model.Usuario" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: virid
  Date: 27/07/2024
  Time: 01:02 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Usuarios</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../static/css/admin.css">
</head>
<body>
<aside class="sidebar">
    <nav class="nav-top">
        <a href="#" class="logo">
            <img src="../static/img/Jira.png" alt="" height="65px">
            <span class="icon-package"></span>
            <span class="sr-only">Manos Mexicanas</span>
        </a>
        <a href="dashboard.jsp" class="nav-item" title="Dashboard">
            <img src="../static/img/home.svg" alt="">
            <span class="icon-home"></span>
            <span class="sr-only">Home</span>
        </a>
        <a href="ordersAdmin.jsp" class="nav-item" title="Orders">
            <img src="../static/img/shopping-cart.svg" alt="">
            <span class="icon-shopping-cart"></span>
            <span class="sr-only">Ordenes</span>
        </a>
        <a href="productsAdmin.jsp" class="nav-item" title="Products">
            <img src="../static/img/package.svg" alt="">
            <span class="icon-package"></span>
            <span class="sr-only">Productos</span>
        </a>
        <a href="usersAdmin.jsp" class="nav-item" title="Customers">
            <img src="../static/img/users.svg" alt="">
            <span class="icon-users"></span>
            <span class="sr-only">Clientes</span>
        </a>
    </nav>
</aside>

<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mt-4">
        <h2>Usuarios</h2>
    </div>

    <ul class="nav nav-pills mb-3">
        <li class="nav-item">
            <a class="nav-link active" href="#" data-filter="Todo">Todo</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#" data-filter="Habilitado">Habilitados</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#" data-filter="Deshabilitado">Deshabilitados</a>
        </li>
    </ul>


    <table class="table table-striped table-hover" id="example">
        <thead>
        <tr>
            <th>Id</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Telefono</th>
            <th>Correo</th>
            <th>Estado</th>


        </tr>
        </thead>
        <tbody id="dataTable">
        <%
            UserDao dao = new UserDao();
            ArrayList<Usuario> lista = dao.getAll();
            for(Usuario u : lista){//Por cada usuario de la lista
        %>
        </tr>
        <c:forEach var="u" items="${usuario}">
            <tr>
                <td><%= u.getId() %></td>
                <td><%= u.getNombre() %></td>
                <td><%= u.getApellido() %></td>
                <td><%= u.getTelefono() %></td>
                <td><%= u.getCorreo() %></td>
                <td>
                    <form action="cambiarEstadoUsuario" method="post">
                        <input type="hidden" name="userId" value="<%= u.getId() %>">
                        <% if (u.getStatus()) { %>
                        <button type="submit" name="action" value="deshabilitar" class="btn-modificar">Deshabilitar</button>
                        <% } else { %>
                        <button type="submit" name="action" value="habilitar" class="btn-eliminar">Habilitar</button>
                        <% } %>
                    </form>
                </td>
            </tr>
        </c:forEach>
        <% } %>
        </tbody>
    </table>
</div>


<script src="../static/js/jquery-3.7.0.js"></script>
<script src="../static/js/datatables.js"></script>
<script src="../static/js/dataTables.bootstrap5.js"></script>
<script src="../static/js/filtrado.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
