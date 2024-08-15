<%--
  Created by IntelliJ IDEA.
  User: virid
  Date: 22/07/2024
  Time: 09:01 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="mx.edu.utez.manosmexicanas.dao.ProductDao" %>
<%@ page import="mx.edu.utez.manosmexicanas.model.Producto" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.manosmexicanas.model.Color" %>
<%@ page import="java.util.List" %>
<%@ page import="mx.edu.utez.manosmexicanas.model.Categoria" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../static/css/admin.css">
    <script src="../static/js/jquery-3.7.0.js"></script>
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
        <a href="close" class="nav-item" title="Settings">
            <img src="../static/img/settings.svg" alt="Settings">
            <span class="icons-users"></span>
            <span class="sr-only"></span>
        </a>
    </nav>
</aside>

<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mt-4">
        <h2>Productos</h2>
    </div>

    <table class="table table-striped table-hover" id="example">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Color</th>
            <th>Tamaño</th>
            <th>Stock</th>
            <th>Gestion</th>
        </tr>
        </thead>
        <tbody>
        <%
            ProductDao dao = new ProductDao();
            ArrayList<Producto> lista = dao.getAll();
            for(Producto p : lista) {
        %>
        <tr>
            <td><%=p.getId()%></td>
            <td><%=p.getNombre()%></td>
            <td><%=p.getPrecio()%></td>
            <td><%=p.getColor().getNombre()%></td>
            <td><%=p.getTamano()%></td>
            <td><%=p.getStock()%></td>
            <td><a href="productUp?id=<%=p.getId()%>" class="btn-modificar">Modificar</a>

                <a href="deleteProduct?id=<%=p.getId()%>" class="btn-eliminar">Eliminar</a>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>


</div>
<%
ProductDao productDao = new ProductDao();
int lastId = productDao.getNextId();
%>
<div class="container mt-5">
    <div class="breadcrumb">
    </div>
    <h2 class="mt-4">Agregar Producto</h2>
    <form method="post" action="productUp" >
        <div class="row mt-4">
            <div class="col-md-8">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Detalles del Producto</h5>
                        <div class="form-group">
                            <label for="Nombre">Nombre</label>
                            <input type="text" class="form-control" id="Nombre" name="nombre" required>
                        </div>
                        <div class="form-group">
                            <label for="Descripcion">Descripción</label>
                            <textarea class="form-control" id="Descripcion" name="des" rows="3" placeholder="Ejemplo: Este es un producto fabricado a mano tejido con estambre de calidad" required></textarea>
                        </div>
                    </div>
                </div>

                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Especificaciones</h5>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="Id">ID</label>
                                <input type="number" class="form-control" id="id" name="id" required placeholder="<%=lastId%>">
                            </div>
                            <div class="form-group col-md-4">
                                <label for="stock">Stock</label>
                                <input type="number" class="form-control" id="stock" name="stock" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="Precio">Precio</label>
                                <input type="number" step="0.01" class="form-control" id="Precio" name="precio" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="tamaño">Tamaño</label>
                                <input type="number" step="0.01" class="form-control" id="tamaño" name="tama" required>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Categoria</h5>
                        <div class="form-group">
                            <label for="categoria">Categoría</label>
                            <select class="form-control" id="categoria" name="cate" required>
                                <option selected disabled value="">Selecciona</option>
                            </select>
                        </div>
                    </div>
                    <div class="card-body">
                        <button type="submit" class="btn btn-success">Guardar Producto</button>
                        <button type="reset" class="btn btn-secondary">Descartar</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>



<script src="../static/js/datatables.js"></script>
<script src="../static/js/dataTables.bootstrap5.js"></script>
<script src="../static/js/selectCategoria.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
