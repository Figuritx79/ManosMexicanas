<%--
  Created by IntelliJ IDEA.
  User: moonp
  Date: 8/15/2024
  Time: 1:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="../static/js/tailwind.min.js"></script>
    <script src="../static/js/tailwind.config.js"></script>
    <link rel="stylesheet" href="../static/css/style.css">
    <link rel="shortcut icon" href="../static/img/Jira.png" type="image/x-icon">
    <title>Manos Mexicanas</title>
    <link rel="stylesheet" href="../static/css/menu.css">
    <script src="../static/js/scrollHeader.js" defer></script>
    <link rel="stylesheet" href="../static/css/headerComponents.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }

        .header-container {
            background-color: #232f3e;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
        }

        .logo {
            height: 40px;
        }

        .header-right a {
            color: white;
            margin-left: 20px;
            text-decoration: none;
        }

        main {
            padding: 20px;
        }

        .h1 {
            font-size: 40px;
            margin-bottom: 20px;
        }

        img {
            height: 150px;
            width: 150px;
        }

        .account-options {
            display: grid;
            grid-template-columns: repeat(3, 1fr); /* Mantiene las 3 columnas en pantallas grandes */
            gap: 20px;
        }

        .option {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 250px; /* Limita el ancho máximo */
            margin: 0 auto; /* Centra el contenedor */
        }

        .option img {
            height: 50px;
            margin-bottom: 15px;
        }

        .option h2 {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .option p {
            color: #555;
        }

        footer {
            background-color: #232f3e;
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 20px;
        }

        /* Responsiveness for Tablets (stack columns into 2) */
        @media (max-width: 1024px) {
            .account-options {
                grid-template-columns: repeat(2, 1fr); /* 2 columnas en tablets */
            }
        }

        /* Responsiveness for Mobile Devices (stack into 1 column) */
        @media (max-width: 640px) {
            .account-options {
                grid-template-columns: 1fr; /* 1 columna en móviles */
            }

            .option {
                max-width: 100%; /* Deja que ocupe todo el ancho disponible */
            }
        }

    </style>
</head>
<body class="bg-b100 bg-bg100 text-stone-950">

<%@include file="../components/header.jsp"%>
<%@include file="../components/search.jsp"%>
<%@include file="../components/bag.jsp"%>

<main>
    <h1 class="h1">Mi cuenta</h1>
    <div class="account-options">
        <div class="option prime">
            <img src="icon-prime.png" alt="Prime">
            <h2>Prime</h2>
            <p>Administrar tu membresía, consultar los beneficios y la configuración de pago</p>
        </div>

        <div class="option pagos">
            <img src="icon-pagos.png" alt="Mis pagos">
            <h2>Mis pagos</h2>
            <p>Administrar o agregar métodos de pago y ver tus transacciones</p>
        </div>

        <div class="option soporte">
            <img src="icon-soporte-digital.png" alt="Soporte para dispositivos y servicios digitales">
            <h2>Soporte para dispositivos y servicios digitales</h2>
            <p>Soluciona problemas de dispositivos, administra o cancela suscripciones digitales</p>
        </div>
    </div>
</main>
<%@include file="../components/footer.jsp"%>
</body>
</html>
