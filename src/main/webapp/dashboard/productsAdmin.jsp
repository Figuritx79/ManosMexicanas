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
        <a href="home.html" class="nav-item" title="Dashboard">
            <img src="../static/img/home.svg" alt="">
            <span class="icon-home"></span>
            <span class="sr-only">Home</span>
        </a>
        <a href="#" class="nav-item" title="Orders">
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
            <th>Categoria</th>
            <th>Descripcion</th>
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
            <td><%=p.getCategoria().getNombre()%></td>
            <td><%=p.getDescripcion()%></td>
        </tr>
        <% } %>
        </tbody>
    </table>


</div>

<div class="container mt-5">
    <div class="breadcrumb">
        <!--<a href="#">Home</a> &gt; <a href="#">Productos</a> &gt; Edit Product-->
    </div>
    <h2 class="mt-4">Agregar Producto</h2>
    <form method="post" action="registroProducto" enctype="multipart/form-data">
        <div class="row mt-4">
            <!-- Primera columna -->
            <div class="col-md-6">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Detalles del Producto</h5>
                        <div class="form-group">
                            <label for="Nombre">Nombre</label>
                            <input type="text" class="form-control" id="Nombre" name="nombre" value="">
                        </div>
                        <div class="form-group">
                            <label for="Descripcion">Descripción</label>
                            <textarea class="form-control" id="Descripcion" value="" name="descripcion" rows="3" placeholder="Ejemplo: Este es un producto fabricado a mano tejido con estambre de calidad"></textarea>
                        </div>
                    </div>
                </div>

                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Especificaciones</h5>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="Id">ID</label>
                                <input type="number" class="form-control" id="id" name="id" value="" readonly>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="stock">Stock</label>
                                <input type="number" class="form-control" id="stock" name="stock">
                            </div>
                            <div class="form-group col-md-4">
                                <label for="Precio">Precio</label>
                                <input type="number" step="0.01" class="form-control" id="Precio" name="precio" value="">
                            </div>
                            <div class="form-group col-md-4">
                                <label for="tamaño">Tamaño</label>
                                <input type="number" step="0.01" class="form-control" id="tamaño" value="" name="tamano">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="color">Color</label>
                            <select class="form-control" id="color" name="color">
                                <option selected disabled value="">Selecciona</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Segunda columna -->
            <div class="col-md-6">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Categoria</h5>
                        <div class="form-group">
                            <label for="categoria">Categoría</label>
                            <select class="form-control" id="categoria" name="categoria">
                                <option selected disabled value="">Selecciona</option>
                            </select>
                        </div>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Imagen del producto</h5>
                        <div class="form-group">
                            <input type="file" class="form-control-file" id="imagen" name="imagen">
                        </div>
                    </div>
                    <div class="card-body">
                        <input type="submit" class="btn btn-success" value="Guardar Producto">
                        <button type="button" class="btn btn-secondary">Descartar</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>



<script src="../static/js/datatables.js"></script>
<script src="../static/js/dataTables.bootstrap5.js"></script>
<script src="../static/js/selectProducts.js"></script>
<script src="../static/js/selectProducts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
