<%@ page import="mx.edu.utez.manosmexicanas.dao.ProductDao" %>
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
    <link rel="stylesheet" href="./static/css/menu.css">
    <script src="./static/js/scrollHeader.js" defer></script>
    <link rel="stylesheet" href="./static/css/headerComponents.css">

</head>
<body class="  bg-b100 bg-bg100 text-stone-950 ">

<%@include file="./components/header.jsp"%>
<%@include file="./components/search.jsp"%>
<%@include file="./components/bag.jsp"%>
<main class="flex">
<%@include file="./components/asideCategories.jsp"%>


</main>
<%@include file="components/footer.jsp"%>
</body>
</html>