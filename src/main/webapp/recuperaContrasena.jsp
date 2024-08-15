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
    <link rel="stylesheet" href="./static/css/daisy.min.css">
    <link rel="stylesheet" href="./static/css/menu.css">
    <link rel="stylesheet" href="./static/css/toastify.min.css">
    <script src="./static/js/toastify.min.js"></script>
    <script src="./static/js/validateData.js" defer></script>
    <link rel="stylesheet" href="./static/css/menu.css">
    <script src="./static/js/scrollHeader.js" defer></script>
    <link rel="stylesheet" href="./static/css/headerComponents.css">
</head>
<body class="  bg-b100 bg-bg100 text-stone-950 ">

<%@include file="./components/header.jsp"%>
<%@include file="./components/search.jsp"%>
<%@include file="./components/bag.jsp"%>
<main class="bg-gray-200">

    <div class="flex justify-center items-center min-h-screen bg-gray-100 antialiased">
        <div class="container sm:mt-40 mt-24 my-auto max-w-md border-2 border-gray-200 rounded-[20px] p-3 bg-primary-gray-200">
            <!-- header -->
            <div class="text-center m-6">
                <h1 class="text-3xl font-semibold text-100">¿Olvidaste tu contraseña?</h1>
                <p class="text-200">¡Simplemente ingrese su dirección de correo electrónico a continuación y le enviaremos un enlace para restablecer su contraseña!</p>
            </div>
            <!-- sign-in -->
            <div class="m-6">
                <form class="mb-4" method="POST" action="searchMail" id="form-recu">
                    <div class="mb-6">
                        <label for="email" class="block mb-2 text-sm text-gray-100 dark:text-gray-400">Correo Electrónico</label>
                        <input type="email" name="email" id="email" placeholder="Tu correo electrónico" class="validate w-full px-3 py-2 placeholder-gray-300 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-indigo-100 focus:border-indigo-300 dark:bg-gray-700 dark:text-white dark:placeholder-gray-500 dark:border-gray-600 dark:focus:ring-gray-900 dark:focus:border-gray-500">
                    </div>
                    <div class="mb-6">
                        <button type="submit" class="w-full px-3 py-4 text-white bg-primary100 rounded-md hover:bg-teal-600 focus:outline-none duration-100 ease-in-out">Enviar enlace de reinicio</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


</main>
<%@include file="components/footer.jsp"%>
</body>
</html>
