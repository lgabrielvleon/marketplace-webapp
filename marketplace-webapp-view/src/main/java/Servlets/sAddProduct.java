package Servlets;

import org.apache.log4j.Logger;
import org.home.example.dao.logistica.ProductDAO;
import org.home.example.entity.logistica.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "sAddProduct", value = "/sAddProduct")
public class sAddProduct extends HttpServlet {
    private static Logger logger = Logger.getLogger(sAddProduct.class);
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("GestionProductos/addProduct.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            Product product = new Product();
            product.setName(request.getParameter("name"));
            product.setPrecio(Double.parseDouble(request.getParameter("price")));
            product.setStock(Integer.parseInt(request.getParameter("stock")));
            logger.info("Objeto a registrar: "+product.toString());
            ProductDAO.getInstance().addProduct(product);
            response.sendRedirect("sGestionarProductos");
        }catch (Exception e){
            logger.error(e);
        }
    }
}
