<%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 6/24/24
  Time: 8:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <title>Registro</title>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="./static/js/tailwind.config.js"></script>
  <link rel="stylesheet" href="./static/css/register.css">
  <script src="./static/js/registerValidate.js" defer></script>
  <script src="./static/js/toastify.min.js" defer></script>
  <link rel="stylesheet" href="./static/css/toastify.min.css">
  <link rel="shortcut icon" href="./static/img/Logo.svg" type="image/x-icon">
</head>
<body>
<main class="container">
  <section class="register-form">
    <div class="header">
      <img src="./static/img/LogoWithBorder.svg" alt="Logo">
    </div>
    <form action="registro" method="post" id="registerForm">
      <h2>Regístrate</h2>
      <div class="form-group row">
        <input type="text" name="nombre" id="nombre" placeholder="Nombres" >
        <input type="text" name="apellido" id="apellidos" placeholder="Apellidos"  >
      </div>
      <div class="form-group">
        <input type="email" name="correo" id="correo" placeholder="Correo"  >
      </div>
      <div class="form-group">
        <input type="text" name="tel" id="tel" placeholder="Teléfono" >
      </div>
      <div class="form-group">
        <input type="password" name="pass" id="password" placeholder="Contraseña" >
      </div>
      <div class="form-group">
        <input type="password" name="pass2" id="confirmPassword" placeholder="Confirmar contraseña" >
      </div>
      <button type="submit">Registrarse</button>
      <p>¿Ya tienes cuenta? <a href="login.jsp">Inicia sesión</a></p>
    </form>
  </section>
</main>
</body>
</html>
