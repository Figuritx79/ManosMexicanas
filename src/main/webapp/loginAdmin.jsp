<%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 6/18/24
  Time: 11:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link rel="stylesheet" href="./static/css/loginAdmin.css">
    <script src="./static/js/adminForm.js" ></script>
    <link rel="stylesheet" href="./static/css/toastify.min.css">
    <script src="./static/js/toastify.min.js"></script>
</head>
<body>
<main class="main-container">
    <section class="image-container">
        <img src="./static/img/LogoWithBorder.svg" alt="Logo">
    </section>

    <section class="login-container form">
        <h1>Admin Login</h1>
        <p>Ingresa tus credenciales para acceder al panel del admin</p>
        <form action="login" method="post" id="loginAdmin">
            <div class="input-group">
                <input type="email" id="email" placeholder="Correo" name="correo">
            </div>
            <div class="input-group">
                <input type="password" id="password" placeholder="Contraseña" name="pass">
            </div>
            <button type="submit" id="btn">Iniciar Sesión</button>
        </form>
    </section>
</main>
</body>
</html>
