<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="./static/js/tailwind.min.js"></script>
  <script src="./static/js/tailwind.config.js"></script>
  <link rel="stylesheet" href="./static/css/style.css">
  <link rel="shortcut icon" href="./static/img/Logo.svg" type="image/x-icon">
  <title>Manos Mexicanas</title>
  <script src="./static/js/toastify.min.js"></script>
  <link rel="stylesheet" href="./static/css/toastify.min.css">
  <script src="./static/js/validateDataP.js" defer></script>
  <link rel="stylesheet" href="./static/css/menu.css">
  <script src="./static/js/scrollHeader.js" defer></script>
  <link rel="stylesheet" href="./static/css/headerComponents.css">
</head>
<body class="bg-b100 bg-bg100 text-stone-950">

<%@include file="./components/header.jsp"%>
<%@include file="./components/search.jsp"%>
<%@include file="components/bag.jsp"%>

<main class="bg-gray-200">

  <div class="flex justify-center items-center min-h-screen bg-gray-100 antialiased">
    <div class="container sm:mt-40 mt-24 my-auto max-w-md border-2 border-gray-200 rounded-[20px] p-3 bg-primary-gray-200">
      <!-- header -->
      <div class="text-center m-6">
        <h1 class="text-3xl font-semibold text-100">Restablecer contraseña</h1>
      </div>
      <!-- form -->
      <div class="m-6">
        <form method="post" action="restore" class="mb-4" id="form-recu">
          <div class="mb-6">
            <label for="password" class="block mb-2 text-sm text-gray-100 dark:text-gray-400">Contraseña nueva</label>
            <input type="password" name="pass" id="password" placeholder="Contraseña nueva" class="validate w-full px-3 py-2 placeholder-gray-300 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-indigo-100 focus:border-indigo-300 dark:bg-gray-700 dark:text-white dark:placeholder-gray-500 dark:border-gray-600 dark:focus:ring-gray-900 dark:focus:border-gray-500" required>
          </div>
          <div class="mb-6">
            <input type="hidden" name="user" value="<%= request.getParameter("user") %>">
            <button type="submit" class="w-full px-3 py-4 text-white bg-primary100 rounded-md hover:bg-teal-600 focus:outline-none duration-100 ease-in-out">Cambiar contraseña</button>
          </div>
        </form>
      </div>
    </div>
  </div>

</main>
<%@include file="components/footer.jsp"%>
</body>
</html>
