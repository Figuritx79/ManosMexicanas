<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.manosmexicanas.model.Producto" %><%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 8/18/24
  Time: 3:59 PM
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
    <title>Carrito</title>
    <script src="<%=request.getContextPath()%>/static/js/tailwind.min.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/tailwind.config.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/style.css">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/img/Jira.png" type="image/x-icon">
    <title>Carrito</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/menu.css">
    <script src="<%=request.getContextPath()%>/static/js/scrollHeader.js" defer></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/headerComponents.css">
    <script src="<%=request.getContextPath()%>/static/js/selectDireccion.js"></script>
</head>
<body>
<%
    String idString = request.getParameter("id");
    int id = Integer.parseInt(idString);

    CarritoDao carroDao = new CarritoDao();
    ArrayList<Producto> productos = carroDao.showCarrito(id);
    double totalCompra = 0;
%>
<%@include file="../components/header.jsp" %>
<%@include file="../components/bag.jsp" %>
<%@include file="../components/search.jsp" %>

<main>
    <section class="w-full py-12">
        <div class="container grid gap-6 md:gap-8 px-4 md:px-6">
            <div class="flex flex-col md:flex-row items-start md:items-center gap-4 md:gap-8">
                <div class="grid gap-1">
                    <h1 class="text-2xl font-bold tracking-tight">Carrito</h1>
                    <p class="text-muted-foreground">Revisa tu carrito y procede a la compra.</p>
                </div>
            </div>


            <div class="grid gap-6">
                <div class="rounded-lg border bg-primary100 text-bg100 text-card-foreground shadow-md" data-v0-t="card">
                    <div class="p-6 grid gap-6">
                        <ul class="grid gap-4">
                        <%if (!productos.isEmpty()){
                            for (Producto p : productos){  %>
                                 <li class="grid grid-cols-[64px_1fr_auto] items-center gap-4">
                                     <img
                                             src="<%=p.getImage().getUrl()%>"
                                             alt="<%=p.getNombre()%>"
                                             width="64"
                                             height="64"
                                             class="rounded-md object-cover"
                                             style="aspect-ratio: 64 / 64; object-fit: cover;"
                                     />
                                     <div class="grid gap-1">
                                         <h3 class="font-medium"><%=p.getNombre()%></h3>
                                         <p class="text-muted-foreground text-sm">$<%=p.getPrecio()%></p>
                                     </div>
                                     <div class="flex items-center gap-2">
                                         <button class="inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border   h-10 w-10">
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
                                                     class="h-4 w-4"
                                             >
                                                 <path d="M3 6h18"></path>
                                                 <path d="M19 6v14c0 1-1 2-2 2H7c-1 0-2-1-2-2V6"></path>
                                                 <path d="M8 6V4c0-1 1-2 2-2h4c1 0 2 1 2 2v2"></path>
                                             </svg>
                                         </button>
                                     </div>
                                 </li>
                            <div data-orientation="horizontal" role="none" class="shrink-0 bg-bg100 h-[1px] w-full">
                            </div>
                        <% }} %>
                        </ul>
                    </div>
                </div>

                <div class="text-card-foreground" data-v0-t="card">
                        <%for (Producto pr : productos){
                            totalCompra = totalCompra + pr.getPrecio();%>
                            <div class="p-6 grid gap-4">
                                <div class="flex items-center justify-between">
                                    <span><%=pr.getNombre()%></span>
                                    <span>$<%=pr.getPrecio()%></span>
                                </div>
                            </div>
                        <% }%>

                    <div data-orientation="horizontal" role="none" class="shrink-0 bg-bg200 h-[1px] w-full">
                    </div>
                    <div class="p-6 grid gap-4">
                        <div class="flex items-center justify-between font-medium">
                            <span>Total</span>
                            <span>$<%=totalCompra%></span>
                        </div>
                    </div>

                    <div class="items-center p-6 flex gap-2 justify-center">
                        <form action="pedido" method="post">
                            <input type="hidden" name="id" value="<%=id%>">
                            <input type="hidden" name="totalCompra" value="<%=totalCompra%>">
                            <label for="direccion" class=" mb-2 text-sm font-medium text-text100">Selecciona tu Direccion</label>

                            <select required name="direccion" id="direccion" class="bg-primary100 border border-bg100 text-text100 text-sm rounded-lg focus:ring-primary200 focus:border-primary200 block w-full p-2.5 d" >
                                <option value="Selecciona" selected disabled class="text-text100" >Selecciona</option>
                            </select>
                            <button class="inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:opacity-50
          text-bg100 hover:bg-secondary h-10 px-4 py-2 bg-extra">
                                Proceder a la compra
                            </button>
                        </form>
                        <button  class="inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2  disabled:opacity-50 border  hover:border-extra hover:text-accent-foreground h-10 px-4 py-2 ">
                            Continuar comprando
                        </button>

                    </div>
                </div>
            </div>
        </div>
    </section>

</main>

<%@include file="../components/footer.jsp" %>
</body>
</html>
