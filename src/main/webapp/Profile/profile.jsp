<%@ page import="mx.edu.utez.manosmexicanas.dao.DireccionDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.manosmexicanas.model.Domicilio" %><%--
  Created by IntelliJ IDEA.
  User: moonp
  Date: 8/15/2024
  Time: 1:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="<%=request.getContextPath()%>/static/js/tailwind.min.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/tailwind.config.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/style.css">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/img/Jira.png" type="image/x-icon">
    <title>Manos Mexicanas</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/menu.css">
    <script src="<%=request.getContextPath()%>/static/js/scrollHeader.js" defer></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/headerComponents.css">

</head>
<body class="bg-b100 bg-bg100 text-stone-950">

<%@include file="../components/header.jsp"%>
<%@include file="../components/search.jsp"%>
<%@include file="../components/bag.jsp"%>
<%
    String idString = request.getParameter("id");
    int id = Integer.parseInt(idString);
    UserDao daoUser = new UserDao();
    Usuario cliente = daoUser.getOneById(id);
    DireccionDao daoDireccion = new DireccionDao();

    ArrayList<Domicilio> domicilios = daoDireccion.getOneById(id);
    CarritoDao daoCarrito = new CarritoDao();
%>
<main>
    <div class="bg-background text-foreground min-h-screen flex flex-col">
        <header class="bg-primary text-primary-foreground py-4 px-6 ">
            <h1 class="text-2xl font-bold">Mi cuenta</h1>
        </header>
        <main class="flex-1 py-8 px-6 text-bg100">
            <section class="bg-primary100 rounded-lg shadow-md p-6 mb-6 hover:border-secondary"">
                <h2 class="text-lg font-semibold mb-4">Información personal</h2>
                <div class="grid grid-cols-2 gap-4">
                    <div>
                        <label for="name" class="block text-sm font-medium text-muted-foreground">
                            Nombre
                        </label>
                        <p id="name" class="text-base font-medium">
                           <%=cliente.getNombre()%> <%=cliente.getApellido()%>
                        </p>
                    </div>
                    <div>
                        <label for="email" class="block text-sm font-medium text-muted-foreground">
                            Correo electrónico
                        </label>
                        <p id="email" class="text-base font-medium">
                            <%=cliente.getCorreo()%>
                        </p>
                    </div>
                </div>
            </section>

            <section class="bg-bg100 text-text100 rounded-lg shadow-md p-6 mb-6">
                <h2 class="text-lg font-semibold mb-4">Mis Pedidos</h2>
                <div class="grid grid-cols-1 gap-4">

                </div>
            </section>
            <section class="bg-primary100 text-bg100 rounded-lg shadow-md p-6 mb-6">
                <h2 class="text-lg font-semibold mb-4">Direcciones</h2>
                <div class="grid grid-cols-1 gap-4">
                    <%
                        if (domicilios.isEmpty()){
                    %>

                    <a
                            class="flex items-center justify-between bg-background hover:bg-accent hover:text-accent-foreground rounded-md px-4 py-3 transition-colors"
                            href="#"
                    >
                        <div>
                            <p class="text-sm text-muted-foreground">No tienes direcciones. Ingresa una.</p>
                        </div>
                        <svg
                                xmlns="http://www.w3.org/2000/svg"
                                width="24"
                                height="24"
                                viewBox="0 0 24 24"
                                fill="none"
                                stroke="currentColor"
                                stroke-width="2"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                class="w-5 h-5 text-muted-foreground"
                        >
                            <path d="m9 18 6-6-6-6"></path>
                        </svg>
                    </a>
                    <%}%>

                    <%
                        if(!domicilios.isEmpty()){
                            for(Domicilio d : domicilios){
                    %>

                            <a
                                class="flex items-center justify-between bg-background hover:bg-accent hover:text-accent-foreground rounded-md px-4 py-3 transition-colors"
                                href="#"
                            >
                            <div>
                                <p class="text-base font-medium">Dirección</p>
                                <p class="text-sm text-muted-foreground">
                                        <%=d.getNumeroExterior()%> , <%=d.getCalle()%>
                                        <%=d.getCiudad()%> , <%=d.getEstado()%>
                                </p>
                            </div>
                            <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                width="24"
                                height="24"
                                viewBox="0 0 24 24"
                                fill="none"
                                stroke="currentColor"
                                stroke-width="2"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                class="w-5 h-5 text-muted-foreground"
                             >
                                <path d="m9 18 6-6-6-6"></path>
                            </svg>
                            </a>
                    <%  }}  %>
                </div>
            </section>
            <section class="bg-bg100 text-text100 rounded-lg shadow-md p-6 mb-6">
                <h2 class="text-lg font-semibold mb-4">Carrito</h2>
                <div class="grid grid-cols-1 gap-4">
                    <a
                            class="flex items-center justify-between bg-background hover:bg-accent hover:text-accent-foreground rounded-md px-4 py-3 transition-colors"
                            href="<%=request.getContextPath()%>/Profile/carrito.jsp?id=<%=id%>"
                    >
                        <div>
                            <p class="text-base font-medium">Carrito</p>
                            <p class="text-sm text-muted-foreground">Revisa los productos en tu carrito</p>
                        </div>
                        <svg
                                xmlns="http://www.w3.org/2000/svg"
                                width="24"
                                height="24"
                                viewBox="0 0 24 24"
                                fill="none"
                                stroke="currentColor"
                                stroke-width="2"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                class="w-5 h-5 text-muted-foreground"
                        >
                            <path d="m9 18 6-6-6-6"></path>
                        </svg>
                    </a>
                </div>
            </section>
        </main>
    </div>
</main>
<%@include file="../components/footer.jsp"%>
</body>
</html>
