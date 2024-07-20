<%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 6/24/24
  Time: 8:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="./static/css/login.css">
    <script src="static/js/check.js" defer></script>
    <link rel="stylesheet" href="./static/css/toastify.min.css">
    <script src="./static/js/toastify.min.js" defer></script>
</head>
<body>
<main class="main-container">
    <section class="image-container">
        <img src="./static/img/LogoWithBorder.svg" alt="Logo" >
    </section>

    <section class="login-container form">
        <h1>Inicia Sesión</h1>
        <form action="login" method="post" id="loginAdmin">
            <div class="divSpecific">
                <label for="email" class="styleFont">
                    Correo:
                    <input type="email" id="email" name="correo" class="input-group" oninput="checkEmail()">
                    <span class="check-icon" id="check-icon"></span>
                </label>
            </div>
            <div class="divSpecific">
                <label for="password" class="styleFont">
                    Contraseña:
                    <input type="password" id="password" name="pass" class="input-group">
                </label>
            </div>
            <div class="forgot-container">
                <button type="button" class="forgot-password" onclick="forgotPassword()">¿Olvidaste tu contraseña?</button>
            </div>
            <div class="buttons">
                <button type="button" onclick="location.href='registrarse.html'">Registrarse</button>
                <button type="submit">Iniciar Sesión</button>
            </div>
        </form>
    </section>
</main>
</body>
</html>
