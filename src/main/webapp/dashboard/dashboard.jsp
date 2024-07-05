<%@ page import="jakarta.mail.Session" %><%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 7/5/24
  Time: 9:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <script src="../static/js/toastify.min.js">
    </script>
    <link rel="stylesheet" href="../static/css/toastify.min.css">

</head>
<body>
    <%
        String mensaje = (String) request.getSession().getAttribute("mensaje");
        if (mensaje != null ){
    %>
    <script src="">
        Toastify({
            text: "<%= mensaje %>",
            duration: 3000,
            newWindow: true,
            close: true,
            gravity: "bottom", // `top` or `bottom`
            position: "right ", // `left`, `center` or `right`
            stopOnFocus: true, // Prevents dismissing of toast on hover
            style: {
                background: "#30A380",
            },
            onClick: function(){} // Callback after click
        }).showToast();
    </script>
    <%
        }
    %>


</body>
</html>
