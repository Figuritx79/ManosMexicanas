<%@ page import="jakarta.mail.Session" %><%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 7/5/24
  Time: 9:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <script src="../static/js/toastify.min.js">
    </script>
    <link rel="stylesheet" href="../static/css/toastify.min.css">
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

</body>
</html>
