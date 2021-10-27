package Servlets;

import org.apache.log4j.Logger;
import org.home.example.dao.logistica.ProductDAO;
import org.home.example.entity.logistica.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "sGestionarProductos", value = "/sGestionarProductos")
public class sGestionarProductos extends HttpServlet {
    private static Logger logger = Logger.getLogger(sGestionarProductos.class);
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            String type = "";
            type = request.getParameter("type")+"";
            /*
            if (request.getParameter("type").equals("U")){
                int _idProduct = Integer.parseInt(request.getParameter("idProduct").toString());

                Product objProduct = ProductDAO.getInstance().getById(_idProduct);
                logger.info(objProduct.toString());

                session.setAttribute("updateProduct", objProduct);
                response.sendRedirect("GestionProductos/updateProduct.jsp");
            }*/
            if (type.equals("D")){
                logger.info("Entrando a eliminar");
                int _idProduct = Integer.parseInt(request.getParameter("idProduct").toString());
                ProductDAO.getInstance().deleteById(_idProduct);
                logger.info("Se elimino Producto:" + _idProduct);
                response.sendRedirect("GestionProductos/index.jsp");
            }

            logger.info("Entrando a listar productos");
            ArrayList<Product> products = new ArrayList<>();
            products = ProductDAO.getInstance().list();
            logger.info("Asignar sesion");
            session.setAttribute("lstProductos", products);
            logger.info("Redirect");
            response.sendRedirect("GestionProductos/index.jsp");

        }catch (Exception e){
            logger.error(e);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
