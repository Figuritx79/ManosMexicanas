<%@ page import="mx.edu.utez.manosmexicanas.model.Producto" %><%--
  Created by IntelliJ IDEA.
  User: virid
  Date: 06/08/2024
  Time: 10:36 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modificar Producto</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../static/css/admin.css">
</head>
<body>
<%
    HttpSession sesion = request.getSession();
    Producto p = (Producto) sesion.getAttribute("producto");
%>
<div class="container mt-5">
    <div class="breadcrumb">
    </div>
    <h2 class="mt-4">Modificar Producto</h2>
    <form method="post" action="updateProducto" enctype="multipart/form-data">
        <div class="row mt-4">
            <div class="col-md-8">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Detalles del Producto</h5>
                        <div class="form-group">
                            <label for="Nombre">Nombre</label>
                            <input type="text" class="form-control" id="Nombre" name="nombre" value="<%=p.getNombre()%>" required>
                        </div>
                        <div class="form-group">
                            <label for="Descripcion">Descripción</label>
                            <textarea class="form-control" id="Descripcion" name="descripcion" rows="3"  required><%=p.getDescripcion()%></textarea>
                        </div>
                    </div>
                </div>

                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Especificaciones</h5>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="Id">ID</label>

                                <input type="number" class="form-control" id="id" name="id" value="<%=p.getId()%>" readonly >
                            </div>
                            <div class="form-group col-md-4">
                                <label for="stock">Stock</label>
                                <input type="number" class="form-control" id="stock" name="stock" value="<%=p.getStock()%>" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="Precio">Precio</label>
                                <input type="number" step="0.01" class="form-control" id="Precio" name="precio" value="<%=p.getPrecio()%>" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="tamaño">Tamaño</label>
                                <input type="number" step="0.01" class="form-control" id="tamaño" name="tamano" value="<%=p.getTamano()%>" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="color">Color</label>
                            <select class="form-control" id="color" name="color" required>
                                <option selected disabled value=""><%=p.getColor().getNombre()%></option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Categoria</h5>
                        <div class="form-group">
                            <label for="categoria">Categoría</label>
                            <select class="form-control" id="categoria" name="categoria"  required>
                                <option selected disabled value=""><%=p.getCategoria().getNombre()%></option>
                            </select>
                        </div>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Imagen del producto</h5>
                        <div class="form-group">
                            <input type="file" class="form-control-file" id="imagen" name="imagen" required>
                        </div>
                    </div>
                    <div class="card-body">
                        <input type="submit" class="btn btn-success" value="Modificar Producto">
                        <button type="reset" class="btn btn-secondary">Descartar</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<script src="../static/js/jquery-3.7.0.js"></script>
<script src="../static/js/datatables.js"></script>
<script src="../static/js/dataTables.bootstrap5.js"></script>
<script src="../static/js/selectColor.js"></script>
<script src="../static/js/selectColor.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
