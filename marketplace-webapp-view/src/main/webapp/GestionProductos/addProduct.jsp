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
    <jsp:include page="../includes/headerIncludes.jsp"/>
    <title>Update Product</title>
</head>
<body>
    <%
        HttpSession sesion = request.getSession();
        Product objProduct = new Product();
    %>
    <div class="container">
        <div class="row">
            <div class="col s6 center-align">
                <div class="card">
                    <div class="card-content">
                        <span class="card-title">Register Product</span>
                        <form action="../sAddProduct" method="post">
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="product_name" name="name" type="text" class="validate">
                                    <label for="product_name">Product name</label>
                                </div>
                                <div class="input-field col s12">
                                    <input id="product_price" name="price" type="text" class="validate">
                                    <label for="product_price">Price</label>
                                </div>

                                <div class="input-field col s12">
                                    <input id="product_stock" name="stock" type="text" class="validate">
                                    <label for="product_stock">Stock</label>
                                </div>
                            </div>
                            <button type="submit">Registrar</button>
                        </form>
                    </div>
                    <div class="card-action">
                        <a href="#">Register</a>
                        <a href="index.jsp">Cancel</a>
                    </div>
                </div>
            </div>

        </div>
    </div>


</body>
</html>
