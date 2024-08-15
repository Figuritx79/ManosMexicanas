<%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 8/4/24
  Time: 6:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    var sesion = request.getSession();
    var  mensaje = sesion.getAttribute("mensaje");
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mensaje</title>
    <script src="./static/js/tailwind.min.js"></script>
    <script src="./static/js/tailwind.config.js"></script>
</head>
<body>
<h1>
    <%= mensaje%>
    <%
        sesion.removeAttribute("mensaje");
    %>
</h1>
<a href="login.jsp" class="p-4 rounded-md bg-primary100 text-bg100">Regresar</a>
</body>
</html>
<html>
<head>

