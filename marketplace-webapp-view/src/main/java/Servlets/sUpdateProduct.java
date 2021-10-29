package Servlets;

import org.apache.log4j.Logger;
import org.home.example.dao.logistica.ProductDAO;
import org.home.example.entity.logistica.Product;
import sun.jvm.hotspot.types.CIntegerField;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "sUpdateProduct", value = "/sUpdateProduct")
public class sUpdateProduct extends HttpServlet {
    private static Logger logger = Logger.getLogger(sUpdateProduct.class);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Product objProduct = new Product(
                Integer.parseInt(request.getParameter("idProduct")),
                request.getParameter("name"),
                Integer.parseInt(request.getParameter("stock")),
                Double.parseDouble(request.getParameter("price"))
        );
        logger.info(objProduct.toString());
        ProductDAO.getInstance().updateById(objProduct);
        response.sendRedirect("sGestionarProductos");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            int id = 0;
            id = Integer.parseInt(request.getParameter("idProduct"));
            Product objProduct = ProductDAO.getInstance().getById(id);
            session.setAttribute("product", objProduct);

        }catch (Exception e){
            logger.error(e);
        }
        response.sendRedirect("GestionProductos/updateProduct.jsp");
    }
}
