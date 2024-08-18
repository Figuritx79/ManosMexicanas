<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="mx.edu.utez.manosmexicanas.model.Usuario" %>
<%@ page import="mx.edu.utez.manosmexicanas.dao.UserDao" %>
<%@ page import="mx.edu.utez.manosmexicanas.dao.CarritoDao" %><%--
  Created by IntelliJ IDEA.
  User: Figuritx79
  Date: 8/10/24
  Time: 6:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="nav__Bolsa " id="bolsaDesplegable">
<%--        <div class="nav__BolsaVacia mr-24">--%>
<%--            <h2 class="text-text100 text-xl font-bold">--%>
<%--               Bolsa vacia--%>
<%--            </h2>--%>
<%--        </div>--%>
<%--        <div class="nav__divTexto mr-8">--%>
<%--            <p class="nav__divTexto__p">--%>
<%--                <a href="<%=request.getContextPath()%>/login.jsp" class="nav__divTexto__a text-secondary">Inicia Sesion</a>--%>
<%--                    para poder ver tus articulos--%>
<%--            </p>--%>
<%--        </div>--%>
    <div class="nav__divLista mr-48">
        <h2 class="nav__divLista__h2  font-thin text-xs text-text100">Mi perfil</h2>
        <ol class="nav__divLista__ol">
            <li class="font-semibold text-sm">
                <img src="${pageContext.request.contextPath}/static/img/package.svg" alt="pedidos" class="inline w-3 h-3 ">
                <a href="#">Pedidos</a>
            </li>
            <li class="font-semibold text-sm">
                <img src="${pageContext.request.contextPath}/static/img/cog.svg" alt="cuenta" class="inline w-3 h-3 ">
                <a href="profile">Cuenta</a>
            </li>
            <li class="font-semibold text-sm">
                <img src="${pageContext.request.contextPath}/static/img/user.svg" alt="usuario" class="inline w-3 h-3 ">
                <a href="<%=request.getContextPath()%>/login.jsp">Iniciar Sesion</a>
            </li>
        </ol>
    </div>
</div>