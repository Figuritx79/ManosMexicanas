<%--
  Created by IntelliJ IDEA.
  User: virid
  Date: 13/08/2024
  Time: 10:29 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Imagen</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../static/css/admin.css">
    <script src="../static/js/jquery-3.7.0.js"></script>
</head>
<body>

<%
    String idString = request.getParameter("id");
    int id = Integer.parseInt(idString);
%>
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
        <a href="orders.jsp" class="nav-item" title="Orders">
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
        <a href="close" class="nav-item" title="Settings">
            <img src="../static/img/settings.svg" alt="Settings">
            <span class="icons-users"></span>
            <span class="sr-only"></span>
        </a>
    </nav>
</aside>

<div class="container mt-5">
    <div class="breadcrumb">
    </div>
    <h2 class="mt-4">Agregar Producto</h2>
    <form method="post" action="imageUp" enctype="multipart/form-data">
        <div class="row mt-4">
            <div class="col-md-8">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Especificaciones</h5>
                        <div class="form-group">
                            <label for="color">Color</label>
                            <select class="form-control" id="color" name="color" required>
                                <option selected disabled value="">Selecciona</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Imagen del producto</h5>
                        <div class="form-group">
                            <input type="file" class="form-control-file" name="product" id="image" accept="image/*">
                            <input type="hidden" name="id" value="<%=id%>">
                        </div>
                    </div>
                    <div class="card-body">
                        <input type="submit" class="btn btn-success" value="Guardar Producto">
                        <button type="reset" class="btn btn-secondary">Descartar</button>
                        <a  class="btn btn-warning m-4" href="productsAdmin.jsp">Regresar al dashboard</a>
                    </div>
                </div>
            </div>
            <div class="d-flex justify-content-center align-items-center" style="height: 100vh;">
                <a href="#" class="btn btn-primary">Regrasar</a>
            </div>
        </div>
    </form>
</div>
<script src="../static/js/datatables.js"></script>
<script src="../static/js/dataTables.bootstrap5.js"></script>
<script src="../static/js/selectColor.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

