
<%@ page import="mx.edu.utez.manosmexicanas.dao.ProductDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.manosmexicanas.model.Producto" %>
<%@ page import="mx.edu.utez.manosmexicanas.model.Usuario" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    ProductDao productDao = new ProductDao();

    ArrayList<Producto> productos  = productDao.randProducts();


%>

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
    <link rel="shortcut icon" href="./static/img/Jira.png" type="image/x-icon">
    <title>Manos Mexicanas</title>
    <link rel="stylesheet" href="./static/css/menu.css">
    <script src="./static/js/scrollHeader.js" defer></script>
    <link rel="stylesheet" href="./static/css/headerComponents.css">
</head>
<body class="  bg-b100 bg-bg100 text-stone-950 ">

<%@include file="./components/header.jsp"%>
<%@include file="components/search.jsp"%>
<%@include file="./components/bag.jsp"%>
<main >

    <section class="flex flex-col p-4 lg:flex lg:flex-row lg:items-center lg:justify-between bg-bg400">
        <figure class="flex flex-col items-center lg:items-start lg:w-1/2 ml-10">
            <img src="static/img/bienvenida.png" alt="Bienvenido" class="w-full lg:w-auto lg:h-auto">
        </figure>
        <div class="lg:w-1/2 lg:pl-8">
            <h1 class="text-3xl font-extrabold mt-2 lg:text-5xl">Peluches de Crochet Hechos a Mano</h1>
            <p class="text-base italic pt-2 lg:text-left lg:text-lg">
                Descubre nuestra colección de peluches de crochet únicos y encantadores, creados con amor por artesanos
                mexicanos.
            </p>
            <div class="flex pt-4 gap-x-12 mt-4 items-center justify-center lg:grid grid-cols-2 lg:text-center">
                <a href="#" class="border-0 bg-primary px-8 py-3.5 rounded-md text-bg100 font-semibold lg:px-6 link no-underline" id="btnCatalogo">Ver

                    <a href="about.jsp" class="bc px-2 py-3.5 rounded-md text-neutral-950 hover:bg-secondary link no-underline" id="">Conoce mas</a>
            </div>
        </div>
    </section>


    <section class="mt-16 px-4 py-4">
        <div class="flex flex-col justify-center items-center">
            <h2 class=" text-xl lg:text-3xl">Nuestros Productos</h2>
            <div class="mt-4 text-base lg:text-lg p-2">
                <p>Explora nuestras categorias mas populares de peluches de crochet y encuentra tu favorito</p>
            </div>
        </div>
        <div class=" container grid grid-cols-2 grid-rows-2 lg:grid-cols-4 lg:grid-rows-none place-content-center mt-10 text-center place-items-center">


            <div class="categoria relative isolate flex flex-col justify-end overflow-hidden rounded-2xl px-8 pb-8 pt-40  mt-4">
                <img src="./static/img/categoria3.jpeg" alt="Categoria animados" class="absolute inset-0 h-full w-full object-cover">
                <div class="absolute inset-0 bg-gradient-to-t from-gray-900 via-gray-900/40"></div>
                <h3 class="z-10 mt-3 text-lg lg:text-3xl font-bold text-white">Categoria:</h3>
                <div class="z-10 gap-y-1 overflow-hidden text-sm leading-6 text-gray-300">Animados</div>
            </div>

            <div class="categoria relative isolate flex flex-col justify-end overflow-hidden rounded-2xl px-8 pb-8 pt-40  mt-4">
                <img src="./static/img/categoria2.jpeg" alt="categoria animados" class="absolute inset-0 h-full w-full object-cover">
                <div class="absolute inset-0 bg-gradient-to-t from-gray-900 via-gray-900/40"></div>
                <h3 class="z-10 mt-3 text-xl lg:text-3xl font-bold text-white">Categoria:</h3>
                <div class="z-10 gap-y-1 overflow-hidden text-sm leading-6 text-gray-300">Comida</div>
            </div>

            <div class="categoria relative isolate flex flex-col justify-end overflow-hidden rounded-2xl px-8 pb-8 pt-40 mt-4">
                <img src="./static/img/categoria1.jpeg" alt="categoria animados" class="absolute inset-0 h-full w-full object-cover">
                <div class="absolute inset-0 bg-gradient-to-t from-gray-900 via-gray-900/40"></div>
                <h3 class="z-10 mt-3 text-xl lg:text-3xl font-bold text-white">Categoria:</h3>
                <div class="z-10 gap-y-1 overflow-hidden text-sm leading-6 text-gray-300">Ropa</div>
            </div>


            <div class="categoria relative isolate flex flex-col justify-end overflow-hidden rounded-2xl px-8 pb-8 pt-40  mt-4">
                <img src="./static/img/categoria1.jpeg" alt="categoria animados" class="absolute inset-0 h-full w-full object-cover">
                <div class="absolute inset-0 bg-gradient-to-t from-gray-900 via-gray-900/40"></div>
                <h3 class="z-10 mt-3 lg:text-3xl  text-xl font-bold text-white">Categoria:</h3>
                <div class="z-10 gap-y-1 overflow-hidden text-sm leading-6 text-gray-300">Artistas</div>
            </div>




        </div>
    </section>

    <section class="mt-16 gap-x-4  ">

        <div>
            <h2 class="lg:text-3xl text-xl p-6">Mas Vendidos</h2>

            <div>
                <p class="lg:text-lg text-base p-5">Nuestros peluches de crochet mas populares</p>
            </div>
        </div>
        <div class="grid lg:grid-cols-3 grid-cols-2 grid-rows-2 gap-x-6 place-content-center place-items-center ">
            <%
                for (Producto u : productos) {
            %>
            <div class="w-full max-w-sm bg-white border border-gray-200 rounded-lg shadow">
                <a href="<%= u.getImage().getUrl() %>">
                    <img class="p-8 rounded-t-lg h-44" src="<%= u.getImage().getUrl() %>" alt="product image" />
                </a>
                <div class="px-5 pb-5">
                    <a href="#">
                        <h5 class="text-xl font-semibold tracking-tight text-gray-900"><%= u.getNombre() %></h5>
                    </a>
                    <div class="flex items-center mt-2.5 mb-5">
                        <div class="flex items-center space-x-1 rtl:space-x-reverse">

                            <svg class="w-4 h-4 text-yellow-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                                <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                            </svg>
                            <svg class="w-4 h-4 text-yellow-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                                <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                            </svg>
                            <svg class="w-4 h-4 text-yellow-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                                <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                            </svg>

                            <svg class="w-4 h-4 text-yellow-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                                <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                            </svg>
                            <svg class="w-4 h-4 text-yellow-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                                <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                            </svg>
                        </div>
                        <span class="bg-blue-100 text-blue-800 text-xs font-semibold px-2.5 py-0.5 rounded dark:bg-blue-200 dark:text-blue-800 ms-3">5.0</span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="text-3xl font-bold text-gray-900 dark:text-white">$<%= u.getPrecio() %></span>
                        <a href="redirect?id=<%= u.getId()%>" class="text-white bg-primary100 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Agregar al carrito</a>
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>
        </div>


    </section>

    <section class="mb-16">
        <div class="flex justify-center items-center flex-col">
            <h2 class="lg:text-3xl">¿Qué opinan nuestros clientes?</h2>
            <div class="mt-6">

                <p class=" lg:tex-sm lg:leading-relaxed">
                    Escucha a nuestros clientes satisfechos sobre sus experiencias con nuestros muñecos de
                </p>
                <p class="lg:text-sm leading-relaxed lg:text-center">
                    crochet hechos a mano.
                </p>
            </div>
        </div>
    </section>

    <section class="mt-16 mb-8">
        <div class="flex flex-col lg:flex-row justify-center items-center mt-8 gap-4">
            <div class="card w-80 bg-base-90 shadow-xl border rounded-lg p-4">
                <div class="flex items-center">
                    <img src="https://myinstagirls.com/wp-content/gallery/abella-danger/51803969_1345038555637577_8879501457919695908_n.jpg" alt="Cliente 1" class="w-12 h-12 rounded-full">
                    <div class="ml-4">
                        <h3 class="text-lg font-semibold">Dewey Wilkerson</h3>
                        <div class="flex items-center">
                            <svg class="w-5 h-5 text-yellow-500" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049.57c.3-.921 1.603-.921 1.902 0l1.263 3.925c.27.842 1.036 1.426 1.915 1.425h4.097c.977 0 1.381 1.249.588 1.81l-3.316 2.409c-.705.512-1.02 1.392-.803 2.204l1.263 3.924c.3.921-.755 1.688-1.538 1.125l-3.316-2.41c-.705-.513-1.685-.513-2.39 0l-3.316 2.41c-.783.563-1.838-.204-1.538-1.125l1.263-3.924c.217-.812-.098-1.692-.803-2.204L.833 7.729c-.793-.561-.389-1.81.588-1.81h4.097c.879.001 1.644-.584 1.915-1.425L9.049.57z"/></svg>
                            <span class="ml-2 text-gray-700">4.8</span>
                        </div>
                    </div>
                </div>
                <p class="mt-4 text-gray-600">"¡Excelente servicio y productos de alta calidad! Estoy muy satisfecho con mi compra."</p>
            </div>

            <div class="card w-80 bg-base-90 shadow-xl border rounded-lg p-4">
                <div class="flex items-center">
                    <img src="https://www.semana.com/resizer/bEc8uL0AYVEc8Wlqc7q4OrzIb44=/1280x720/smart/filters:format(jpg):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/semana/D7E4JH23VRAMXIYQG2WP2EDIW4.jpg" alt="Cliente 2" class="w-12 h-12 rounded-full">
                    <div class="ml-4">
                        <h3 class="text-lg font-semibold">Emily Jackson</h3>
                        <div class="flex items-center">
                            <svg class="w-5 h-5 text-yellow-500" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049.57c.3-.921 1.603-.921 1.902 0l1.263 3.925c.27.842 1.036 1.426 1.915 1.425h4.097c.977 0 1.381 1.249.588 1.81l-3.316 2.409c-.705.512-1.02 1.392-.803 2.204l1.263 3.924c.3.921-.755 1.688-1.538 1.125l-3.316-2.41c-.705-.513-1.685-.513-2.39 0l-3.316 2.41c-.783.563-1.838-.204-1.538-1.125l1.263-3.924c.217-.812-.098-1.692-.803-2.204L.833 7.729c-.793-.561-.389-1.81.588-1.81h4.097c.879.001 1.644-.584 1.915-1.425L9.049.57z"/></svg>
                            <span class="ml-2 text-gray-700">4.8</span>
                        </div>
                    </div>
                </div>
                <p class="mt-4 text-gray-600">"¡Me encantaron los productos! La entrega fue rápida y el empaque era muy cuidadoso."</p>
            </div>


            <div class="card w-80 bg-base-90 shadow-xl border rounded-lg p-4">
                <div class="flex items-center">
                    <img src="https://1.bp.blogspot.com/-S8Mbzln8bSU/XtDpVYQlcqI/AAAAAAAADVc/9P533rNP7O0R7ME9tVLJxtkdzydS4frAACPcBGAYYCw/s1600/lanarhoades_20200529_86.png" alt="Cliente 2" class="w-12 h-12 rounded-full">
                    <div class="ml-4">
                        <h3 class="text-lg font-semibold">Emily Jackson</h3>
                        <div class="flex items-center">
                            <svg class="w-5 h-5 text-yellow-500" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049.57c.3-.921 1.603-.921 1.902 0l1.263 3.925c.27.842 1.036 1.426 1.915 1.425h4.097c.977 0 1.381 1.249.588 1.81l-3.316 2.409c-.705.512-1.02 1.392-.803 2.204l1.263 3.924c.3.921-.755 1.688-1.538 1.125l-3.316-2.41c-.705-.513-1.685-.513-2.39 0l-3.316 2.41c-.783.563-1.838-.204-1.538-1.125l1.263-3.924c.217-.812-.098-1.692-.803-2.204L.833 7.729c-.793-.561-.389-1.81.588-1.81h4.097c.879.001 1.644-.584 1.915-1.425L9.049.57z"/></svg>
                            <span class="ml-2 text-gray-700">4.8</span>
                        </div>
                    </div>
                </div>
                <p class="mt-4 text-gray-600">"¡Me encantaron los productos! La entrega fue rápida y el empaque era muy cuidadoso."</p>
            </div>

            <div class="card w-80 bg-base-90 shadow-xl border rounded-lg p-4">
                <div class="flex items-center">
                    <img src="http://media3.s-nbcnews.com/i/newscms/2015_02/835681/150106-mia-khalifa-830a_bcc977bc287eeeb9c3148b332b0e1a7b.jpg" alt="Cliente 3" class="w-12 h-12 rounded-full">
                    <div class="ml-4">
                        <h3 class="text-lg font-semibold">MCLovinn</h3>
                        <div class="flex items-center">
                            <svg class="w-5 h-5 text-yellow-500" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049.57c.3-.921 1.603-.921 1.902 0l1.263 3.925c.27.842 1.036 1.426 1.915 1.425h4.097c.977 0 1.381 1.249.588 1.81l-3.316 2.409c-.705.512-1.02 1.392-.803 2.204l1.263 3.924c.3.921-.755 1.688-1.538 1.125l-3.316-2.41c-.705-.513-1.685-.513-2.39 0l-3.316 2.41c-.783.563-1.838-.204-1.538-1.125l1.263-3.924c.217-.812-.098-1.692-.803-2.204L.833 7.729c-.793-.561-.389-1.81.588-1.81h4.097c.879.001 1.644-.584 1.915-1.425L9.049.57z"/></svg>
                            <span class="ml-2 text-gray-700">4.8</span>
                        </div>
                    </div>
                </div>
                <p class="mt-4 text-gray-600">"Buen producto, pero el tiempo de entrega podría ser más rápido."</p>
            </div>
        </div>


    </section>




</main>
<%@include file="./components/footer.jsp"%>
</body>
</html>
