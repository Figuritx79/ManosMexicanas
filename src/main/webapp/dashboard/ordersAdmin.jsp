<%@ page import="mx.edu.utez.manosmexicanas.dao.OrdersDao" %>
<%@ page import="mx.edu.utez.manosmexicanas.model.Pedido" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: virid
  Date: 13/08/2024
  Time: 08:19 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Orders</title>
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
    <div class="row">
        <div class="col-md-8">
            <div class="d-flex justify-content-between align-items-center mt-4">
                <h2>Productos</h2>
            </div>

            <table class="table table-striped table-hover" id="example">
                <thead>
                <tr>
                    <th>Usuario</th>
                    <th>Cantidad</th>
                    <th>Fecha</th>
                    <th>Precio total</th>
                </tr>
                </thead>
                <tbody>
                <%
                    OrdersDao dao = new OrdersDao();
                    ArrayList<Pedido> lista = dao.getAll();
                    for(Pedido p : lista) {
                %>
                <tr>
                    <td><%=p.getUsuario().getNombre()%></td>
                    <td><%=p.getCantidad()%></td>
                    <td><%=p.getFecha()%></td>
                    <td><%=p.getTotal()%></td>
                </tr>
                <% } %>
                </tbody>
            </table>
        </div>

        <div class="col-md-4">
            <div class="card mt-4">
                <div class="card-body">
                    <h5 class="card-title">Order Oc3170H</h5>
                    <h6 class="card-subtitle mb-2 text-muted">November 23, 2023</h6>

                    <h6>Order Details</h6>
                    <ul class="list-group mb-3">
                        <li class="list-group-item d-flex justify-content-between">
                            <span>Glimmer Lemos x 2</span>
                            <span>$250.00</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between">
                            <span>Aqua Filters x 1</span>
                            <span>$49.00</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between">
                            <span>Subtotal</span>
                            <span>$299.00</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between">
                            <span>Shipping</span>
                            <span>$15.00</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between">
                            <strong>Total</strong>
                            <strong>$314.00</strong>
                        </li>
                    </ul>

                    <h6>Shipping Information</h6>
                    <p class="mb-1">Liam Johnson</p>
                    <p class="mb-1">1234 Main St.</p>
                    <p class="mb-1">San Francisco, CA</p>
                    <p class="mb-1">94107</p>

                    <h6>Billing Information</h6>
                    <p class="mb-1">Liam Johnson</p>
                    <p class="mb-1">1234 Main St.</p>
                    <p class="mb-1">San Francisco, CA</p>
                    <p class="mb-1">94107</p>

                    <h6>Customer Information</h6>
                    <p class="mb-1">Liam Johnson</p>
                    <p class="mb-1">liam.johnson@example.com</p>
                    <p class="mb-1">(123) 456-7890</p>

                    <h6>Payment Information</h6>
                    <p class="mb-1">Visa •••• 4532</p>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="../static/js/datatables.js"></script>
<script src="../static/js/dataTables.bootstrap5.js"></script>
<script src="../static/js/selectColor.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
