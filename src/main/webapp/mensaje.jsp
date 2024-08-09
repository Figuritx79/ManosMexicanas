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
<html>
<head>
    <title>Mensaje</title>
    <script src="./static/js/tailwind.min.js"></script>
    <script src="./static/js/tailwind.config.js"></script>
</head>
<body class="bg-bg100">
    <h1>
        <%= mensaje%>
        <%
            sesion.removeAttribute("mensaje");
        %>
    </h1>
   <a href="login.jsp">Regresar</a>
</body>
</html>
