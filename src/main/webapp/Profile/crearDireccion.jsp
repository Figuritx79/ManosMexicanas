<%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 8/19/24
  Time: 12:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="<%=request.getContextPath()%>/static/js/tailwind.min.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/tailwind.config.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/style.css">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/img/Jira.png" type="image/x-icon">
    <title>Nueva Direccion</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/menu.css">
    <script src="<%=request.getContextPath()%>/static/js/scrollHeader.js" defer></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/headerComponents.css">
</head>
<body>
<%@include file="../components/header.jsp"%>
<%@include file="../components/search.jsp"%>
<%@include file="../components/bag.jsp"%>
<%
    String id = request.getParameter("id");
%>
<main class="bg-gray-200 py-8">
    <div class="container mx-auto max-w-lg bg-white shadow-lg rounded-lg p-6">
        <h2 class="text-2xl font-semibold text-center text-gray-700 mb-6">Nueva Dirección</h2>
        <form action="direccion" method="post">
            <div class="mb-4">
                <label for="calle" class="block text-sm font-medium text-gray-600">Calle</label>
                <input type="hidden" name="id" value="<%=id%>">
                <input type="text" id="calle" name="calle" class="w-full px-3 py-2 placeholder-gray-400 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-indigo-100 focus:border-indigo-300 bg-white" maxlength="45" required>
            </div>

            <div class="mb-4">
                <label for="estado" class="block text-sm font-medium text-gray-600">Estado</label>
                <input type="text" id="estado" name="estado" class="w-full px-3 py-2 placeholder-gray-400 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-indigo-100 focus:border-indigo-300 bg-white" maxlength="45" required>
            </div>

            <div class="mb-4">
                <label for="ciudad" class="block text-sm font-medium text-gray-600">Ciudad</label>
                <input type="text" id="ciudad" name="ciudad" class="w-full px-3 py-2 placeholder-gray-400 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-indigo-100 focus:border-indigo-300 bg-white" maxlength="45" required>
            </div>

            <div class="mb-4">
                <label for="numeroExterior" class="block text-sm font-medium text-gray-600">Número Exterior</label>
                <input type="text" id="numeroExterior" name="exterior" class="w-full px-3 py-2 placeholder-gray-400 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-indigo-100 focus:border-indigo-300 bg-white" maxlength="10" required>
            </div>

            <div class="mb-4">
                <label for="numeroInterior" class="block text-sm font-medium text-gray-600">Número Interior</label>
                <input type="text" id="numeroInterior" name="interior" class="w-full px-3 py-2 placeholder-gray-400 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-indigo-100 focus:border-indigo-300 bg-white" maxlength="10">
            </div>

            <div class="mb-6">
                <label for="cp" class="block text-sm font-medium text-gray-600">Código Postal</label>
                <input type="text" id="cp" name="cp" class="w-full px-3 py-2 placeholder-gray-400 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-indigo-100 focus:border-indigo-300 bg-white" maxlength="5" required>
            </div>

            <div>
                <button type="submit" class="w-full px-4 py-2 text-white bg-teal-500 rounded-md hover:bg-teal-600 focus:outline-none focus:ring focus:ring-teal-100">Guardar Dirección</button>
            </div>
        </form>
    </div>
</main>
<%@include file="../components/footer.jsp"%>

</body>
</html>