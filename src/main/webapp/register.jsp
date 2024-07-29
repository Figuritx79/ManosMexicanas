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
<img src="./static/img/LogoWithBorder.svg" alt="Logo">
<main class="container">
  <section class="register-form">
    <div class="header">
    </div>
    <form action="registro" method="post" id="registerForm">
      <h2>Regístrate</h2>
      <div class="form-group row">
        <div class="divSpecific">
          <label for="nombre" class="styleFont">
            Nombres:
              <input type="text" name="nombre" id="nombre" minlength="5" max="20" class="input-group" required>
          </label>
        </div>

        <div class="divSpecific">
          <label for="apellidos" class="styleFont">
            Apellidos:
               <input type="text" name="apellido" id="apellidos" minlength="5" maxlength="25" class="input-group" required>
          </label>
        </div>
      </div>

      <div class="divSpecific">
        <label for="correo" class="styleFont">
          Correo:
              <input type="email" name="correo" id="correo" minlength="5" maxlength="40" class="input-group" required>
        </label>
      </div>

      <div class="divSpecific">
        <label for="tel" class="styleFont">
          Teléfono:
            <input type="text" name="tel" id="tel" class="input-group" required>
        </label>
      </div>

      <div class="divSpecific">
        <label for="password" class="styleFont">
          Contraseña:
            <input type="password" name="pass" id="password" minlength="8" maxlength="60" class="input-group" required>
        </label>
      </div>

      <div class="divSpecific">
        <label for="confirmPassword" class="styleFont">
          Confirmar contraseña:
            <input type="password" name="pass" id="confirmPassword" minlength="8" maxlength="60" class="input-group" required>
        </label>
      </div>

      <button type="submit">Registrarse</button>
      <p>¿Ya tienes cuenta? <a href="#">Inicia sesión</a></p>
    </form>
  </section>
</main>
</body>
</html>
