<%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 6/24/24
  Time: 8:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>Registro</title>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./components/Header/header.css">
  <script
          src="./static/js/tailwind.min.js">
  </script>
  <script src="./static/js/tailwind.config.js"></script>
  <link rel="stylesheet" href="./static/css/style.css">
  <script src="./static/js/registerValidate.js" defer></script>
  <script src="./static/js/toastify.min.js" defer></script>
  <link rel="stylesheet" href="./static/css/toastify.min.css">
  <link rel="shortcut icon" href="./static/img/Logo.svg" type="image/x-icon">

</head>
<body>
<div>
  <form action="registro" method="post" id="registerForm">
    <div>
      <label for="nombre">
        Nombre:
        <input type="text" name="nombre" id="nombre" minlength="5" max="20">
      </label>
    </div>

    <div>
      <label for="apellidos">
        Apellidos:
        <input type="text" name="apellido" id="apellidos" minlength="5" maxlength="25">
      </label>
    </div>

    <div>
      <label for="correo">
        Correo:
        <input type="email" name="correo" id="correo" minlength="5" maxlength="40">
      </label>
    </div>

    <div>
      <label for="tel">
        Telefono:
        <input type="text" name="tel" id="tel">
      </label>
    </div>

    <div>
      <label for="password">
        Contrasena:
        <input type="password" name="pass" id="password" min="8" maxlength="60">
      </label>
    </div>
    <div>
      <button type="submit">
        Registrarse
      </button>
    </div>
  </form>
</div>
</body>
</html>
