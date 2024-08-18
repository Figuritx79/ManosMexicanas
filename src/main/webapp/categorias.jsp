<%@ page import="mx.edu.utez.manosmexicanas.dao.ProductDao" %>
<%@ page import="mx.edu.utez.manosmexicanas.utils.Pagination" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.manosmexicanas.model.Producto" %>
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
<%


    int maxPages = Pagination.pages();
    int offset = Pagination.offsetPage(Integer.parseInt(request.getParameter("page")));
    ProductDao  productDa= new ProductDao();

    ArrayList<Producto> productos = productDa.paginationProduct(offset);
%>
<body class="  bg-b100 bg-bg100 text-stone-950 min-h-full ">

<%@include file="./components/header.jsp"%>
<%@include file="./components/search.jsp"%>
<%@include file="./components/bag.jsp"%>
<main class="flex">
<%@include file="./components/asideCategories.jsp"%>
    <div class=" grid lg:grid-cols-3 lg:grid-rows-2  lg:gap-x-16 lg:gap-y-6 lg:ml-10 ">
            <%
                for (Producto u : productos){
            %>
        <div class="rounded-lg border border-gray-200 bg-[#F8F7F3] p-6 shadow-sm">
            <div class="h-56 w-full">
                <a href="<%= u.getImage().getUrl() %>">
                    <img class="mx-auto h-full" src="<%= u.getImage().getUrl() %>" alt="">
                </a>
            </div>
            <div class="pt-6">
                <div class="mb-4 flex items-center justify-between gap-4">
                    <span class="me-2 rounded bg-[#30a380] px-2.5 py-0.5 text-xs font-medium text-white"> Up to 35% off </span>
                </div>

                <a href="#" class="text-lg font-semibold leading-tight text-gray-900 hover:underline"><%= u.getNombre() %></a>

                <div class="mt-2 flex items-center gap-2">
                    <div class="flex items-center">
                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                        </svg>

                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                        </svg>

                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                        </svg>

                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                        </svg>

                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                        </svg>
                    </div>

                    <p class="text-sm font-medium text-gray-900">5.0</p>
                </div>

                <ul class="mt-2 flex items-center gap-4">
                    <li class="flex items-center gap-2">
                        <svg class="h-4 w-4 text-gray-500" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                            <path stroke="currentColor" stroke-linecap="round" stroke-width="2" d="M8 7V6c0-.6.4-1 1-1h11c.6 0 1 .4 1 1v7c0 .6-.4 1-1 1h-1M3 18v-7c0-.6.4-1 1-1h11c.6 0 1 .4 1 1v7c0 .6-.4 1-1 1H4a1 1 0 0 1-1-1Zm8-3.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0Z"></path>
                        </svg>
                        <p class="text-sm font-medium text-gray-500">Mejor Precio</p>
                    </li>
                </ul>

                <div class="mt-4 flex items-center justify-between gap-4">
                    <p class="text-2xl font-extrabold leading-tight text-gray-900">$<%= u.getPrecio() %></p>

                    <a href="redirect?id=<%= u.getId()%>" class="inline-flex items-center rounded-lg bg-[#30a380] px-5 py-2.5 text-sm font-medium text-white hover:bg-[#238366] focus:outline-none focus:ring-4 focus:ring-[#67c4aa]">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-shopping-cart h-5 w-5"><circle cx="8" cy="21" r="1"></circle><circle cx="19" cy="21" r="1"></circle><path d="M2.05 2.05h2l2.66 12.42a2 2 0 0 0 2 1.58h9.78a2 2 0 0 0 1.95-1.57l1.65-7.43H5.12"></path></svg>
                        Añadir
                    </a>
                </div>
            </div>
        </div>

            <%
                }
            %>
    </div>

</main>
<%
    int pagina = Integer.parseInt(request.getParameter("page"));
    int pagination;
    int paginationTwo;


    if (pagina <= 1) {
        pagination = 1;
    } else {
        pagination = pagina - 1;
    }


    if (pagina >= maxPages) {
        paginationTwo = maxPages;
    } else {
        paginationTwo = pagina + 1;
    }
%>




<div class="flex justify-center items-center  mb-6 mt-4">
    <!-- Previous Button -->
    <a href="<%=request.getContextPath()%>/categorias.jsp?page=<%=pagination%>"
       class="flex items-center justify-center px-4 h-10 text-base font-medium  text-bg100 bg-primary100 border  border-gray-300 rounded-lg hover:bg-primary200 hover:text-gray-700  ">
        Previous
    </a>

    <!-- Next Button -->
    <a href="<%=request.getContextPath()%>/categorias.jsp?page=<%=paginationTwo%>" class="flex items-center justify-center px-4 h-10 ms-3 text-base font-medium text-bg100 bg-primary100 border border-gray-300 rounded-lg hover:bg-primary200 hover:text-gray-700 ">
        Next
    </a>
</div>
<%@include file="components/footer.jsp"%>
</body>
</html>