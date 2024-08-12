<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script
            src="./static/js/tailwind.min.js">
    </script>
    <script src="./static/js/tailwind.config.js"></script>
    <link rel="stylesheet" href="./static/css/style.css">
    <link rel="shortcut icon" href="./static/img/Logo.svg" type="image/x-icon">
    <title>Manos Mexicanas</title>
    <script src="./Header/header.js" defer></script>

    <link rel="stylesheet" href="./static/css/daisy.min.css">
</head>
<body class="  bg-b100 bg-bg100 text-stone-950 ">

<%@include file="components/header.jsp"%>

<main class="flex">
    <section class="flex flex-col lg:flex-row w-full">
        <aside class="lg:w-1/4 w-full bg-bg400 p-4 h-screen shadow-lg">
            <h1 class="text-3xl font-bold mb-4">Nombre (producto)</h1>
            <p class="text-gray-600">123 resultados</p>
            <div class="mt-4">
                <div class="bg-white p-4 mb-4">
                    <div class="flex items-center">
                        <input type="checkbox" class="toggle toggle-primary" />
                        <span class="ml-2">FULL te da envío gratis</span>
                    </div>
                </div>
                <div class="bg-white p-4">
                    <div class="flex items-center">
                        <input type="checkbox" class="toggle toggle-secondary" />
                        <span class="ml-2">Envío gratis</span>
                    </div>
                </div>
            </div>
            <h2 class="text-2xl font-bold mb-4">Categorías</h2>
            <ul class="space-y-2">
                <li><a href="#" class="text-gray-700 hover:text-gray-900">Animado</a></li>
                <li><a href="#" class="text-gray-700 hover:text-gray-900">Comida</a></li>
                <li><a href="#" class="text-gray-700 hover:text-gray-900">Artistas</a></li>
                <li><a href="#" class="text-gray-700 hover:text-gray-900">Ropa</a></li>
            </ul>
        </aside>
        <div class="lg:w-3/4 w-full  p-4 h-screen drop-shadow-2xl">

        </div>
    </section>
</main>
<%@include file="components/footer.jsp"%>
</body>
</html>