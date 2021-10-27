<%@page import="org.home.example.entity.logistica.Product"%>
<%@page import="org.home.example.dao.logistica.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<div class="container">
    <div class="row">
        <div class="shadow p-3 mb-5 bg-body rounded">
            <h2>Gestion de Productos</h2>
            <table class="striped centered">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Stock</th>
                    <th scope="col">Price</th>
                    <th scope="col">Actions</th>
                </tr>
                </thead>
                <tbody>

                <%
                    ArrayList<Product> lstProduct = new ArrayList<>();
                    try{
                        lstProduct = (ArrayList<Product>)session.getAttribute("lstProductos");
                        for (Product objProducto:lstProduct) {
                %>
                <tr>
                    <td><%=objProducto.getId()%></td>
                    <td><%=objProducto.getName()%></td>
                    <td><%=objProducto.getStock()%></td>
                    <td><%=objProducto.getPrecio()%></td>
                    <td>
                        <a href="../sGestionarProductos?idProduct=<%=objProducto.getId()%>&type=U"><i class="material-icons">mode_edit</i></a>
                        <a href="../sGestionarProductos?idProduct=<%=objProducto.getId()%>&type=D"><i class="material-icons">delete</i></a>
                    </td>
                </tr>
                <%
                        }
                    }
                    catch(Exception e){
                        //out.print(e.getMessage());
                    }
                %>

                </tbody>
            </table>
        </div>

    </div>
</div>

<div class="fixed-action-btn">
    <a class="btn-floating btn-large red" href="../sAddProduct">
        <i class="large material-icons">add</i>
    </a>
</div>
