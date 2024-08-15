<%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 6/18/24
  Time: 11:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link rel="stylesheet" href="./static/css/loginAdmin.css">
    <script src="static/js/check.js" defer></script>
    <link rel="stylesheet" href="./static/css/toastify.min.css">
    <script src="./static/js/toastify.min.js" defer></script>
    <script src="./static/js/loginValidate.js" defer></script>
</head>

<body>
<main class="main-container">
    <section class="image-container">
        <img src="./static/img/LogoWithBorder.svg" alt="Logo" >
    </section>

    <section class="login-container form">
        <div>
            <img src="./static/img/admin.svg" alt="icon">
        </div>
        <h1>Admin Login</h1>
        <p>Ingresa tus credenciales para acceder al panel del admin</p>
        <form action="loginAdmin" method="post" id="login-form">
            <div class="divSpecific">
                <label for="mail" class="styleFont">
                    Correo:
                    <input type="email" id="mail" name="correo" class="input-group" oninput="checkEmail()" autofocus>
                    <span class="check-icon" id="check-icon"></span>
                </label>
            </div>
            <div class="divSpecific">
                <label for="password" class="styleFont">
                    Contraseña:
                    <input type="password" id="password" name="pass" class="input-group">
                </label>
            </div>
            <button type="submit" id="btn" class="login-container button">Iniciar Sesión</button>
        </form>
    </section>
</main>
</body>
</html>
