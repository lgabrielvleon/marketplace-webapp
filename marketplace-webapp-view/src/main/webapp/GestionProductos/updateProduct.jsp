<%@ page import="org.home.example.entity.logistica.Product" %><%--
  Created by IntelliJ IDEA.
  User: lucasvasquez
  Date: 18/09/21
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <title>Update Product</title>
</head>
<body>
    <%
        HttpSession sesion = request.getSession();
        Product objProduct = new Product();
        if (sesion.getAttribute("updateProduct") != null){
            objProduct = (Product) sesion.getAttribute("updateProduct");
        }else{
            response.sendRedirect("../index.jsp");
        }
    %>
    <div class="container">
        <div class="row align-items-center justify-content-center h-100">

            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Update Product</h5>
                    <p class="card-text">
                    <div class="mb-3">
                        <label for="idFormControlInput" class="form-label">ID</label>
                        <input type="text" class="form-control" value="<%=objProduct.getId()%>" id="idFormControlInput" disabled>
                    </div>
                    <div class="mb-3">
                        <label for="nameFormControlInput" class="form-label">Name</label>
                        <input type="text" class="form-control" value="<%=objProduct.getName()%>" id="nameFormControlInput">
                    </div>
                    <div class="mb-3">
                        <label for="precioFormControlInput" class="form-label">Precio</label>
                        <input type="text" class="form-control" value="<%=objProduct.getPrecio()%>" id="precioFormControlInput">
                    </div>
                    <div class="mb-3">
                        <label for="stockFormControlInput" class="form-label">Stock</label>
                        <input type="text" class="form-control" value="<%=objProduct.getStock()%>" id="stockFormControlInput">
                    </div>
                    <div class="d-grid gap-2">
                        <a class="btn btn-primary" href="" type="button">Update</a>
                    </div>
                    </p>
                </div>
            </div>
        </div>
    </div>


</body>
</html>
