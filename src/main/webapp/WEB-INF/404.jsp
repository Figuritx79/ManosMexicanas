<%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 7/15/24
  Time: 7:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>404</title>
    <script src="../static/js/tailwind.min.js"></script>
    <script src="../static/js/tailwind.config.js"></script>
    <link rel="shortcut icon" href="../static/img/Jira.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
</head>
<body class="bg-bg400">
<div class="w-full h-screen flex flex-col items-center justify-center">
    <img src="../static/img/404Image.png" alt="imagen" class="w-full max-w-md rounded-md">
    <div class="flex flex-col items-center justify-center">
        <p class="text-3xl md:text-4xl lg:text-5xl text-gray-800 mt-12 font-poppins font-bold">Página No Encontrada</p>
        <p class="md:text-lg lg:text-xl text-gray-600 mt-8">No se encontró  la página  solicitada</p>
        <a href="#" class="flex items-center space-x-2 bg-primary  text-gray-100 px-4 py-2 mt-12 rounded transition duration-150" title="Return Home">
            <a href="../index.jsp" class="p-2 bg-primary100 text-bg100 rounded-md">Volver a la tienda</a>
        </a>
    </div>
</div>
</body>
</html>
