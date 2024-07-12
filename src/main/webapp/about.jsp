<%--
  Created by IntelliJ IDEA.
  User: evema
  Date: 05/07/2024
  Time: 03:39 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="./static/js/tailwind.min.js"></script>
    <script src="./static/js/tailwind.config.js"></script>
    <link rel="stylesheet" href="./static/css/style.css">
    <link rel="shortcut icon" href="./static/img/Logo.svg" type="image/x-icon">
    <title>About</title>
    <link rel="stylesheet" href="">
</head>
<body class="bg-bg400  md:bg-bg400  lg:bg-b100 xl:bg-bg100 ">
<%@include file="./Header/header.jsp"%>
<main>
    <br>
    <section class="flex flex-col p-4 bg-bg100 lg:flex lg:flex-row lg:items-center lg:justify-between lg:bg-none">
        <figure class="flex flex-col items-center lg:items-start lg:w-1/2 ml-10">
            <img src="./static/img/idea4.png" alt="Imagen descriptiva" class="w-full lg:w-auto lg:h-auto mx-auto block">
        </figure>
        <div class="lg:w-1/2 lg:pl-8">
            <h1 class="text-3xl font-extrabold mt-2 lg:text-5xl">Manos Mexicanas</h1>
            <br>
            <h3 class="text-1xl font-bold mt-1 text-text200 lg:text-2xl">Nuestra historia y misión</h3>
            <p class="text-base italic pt-2 lg:text-left lg:text-lg">
                Manos Mexicanas es una empresa dedicada a la creación de peluches de crochet que celebran la cultura y
                la artesanía mexicana. Fundada por un grupo de artesanos apasionados, nuestra misión es preservar y
                compartir las tradiciones textiles de México a través de nuestros productos hechos a mano.
            </p>
            <br>
            <p class="text-base italic pt-2 lg:text-left lg:text-lg">
                Cada uno de nuestros peluches es tejido con amor y cuidado, utilizando técnicas ancestrales que han
                sido pasadas de generación en generación. Nos enorgullece poder ofrecer a nuestros clientes una
                conexión auténtica con la riqueza cultural de México.
            </p>
        </div>
    </section>
</main>
<!-- aqui va el footer solo falta terminarlo-->
<%@include file="./Footer/footer.jsp"%>
</body>
</html>

