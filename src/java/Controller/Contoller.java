/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Article;
import ModelDAO.ArticleDAO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static javax.swing.JOptionPane.showMessageDialog;

/**
 *
 * @author SANTIAGO
 */
public class Contoller extends HttpServlet {
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String listar = "view/listar.jsp";
    String add= "view/add.jsp";
    String single = "view/single.jsp";
    Article a= new Article();
    ArticleDAO dao = new ArticleDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Contoller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Contoller at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String acceso = "";
    String action = request.getParameter("accion");
    
    if (action.equalsIgnoreCase("listar")) {
        acceso = listar;
    } else if (action.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("Agregar")) {
            String title = request.getParameter("txtTitle");
            String body = request.getParameter("txtBody");
            String game = request.getParameter("txtGame");
            a.setTitle(title);
            a.setBody(body);
            a.setGameName(game);
            a.setUserRating(true);
            if (a.getTitle().equals("") || a.getGameName().equals("") || a.getBody().equalsIgnoreCase("")) {
                acceso = add;
            } else {
                dao.add(a);
                acceso = listar;
            }
        } else if (action.equalsIgnoreCase("single")) {
            acceso = single;
        } else if (action.equalsIgnoreCase("puntuar")) {
            System.out.println("hola");
            int id = Integer.parseInt(request.getParameter("id"));
            int p = Integer.parseInt(request.getParameter("like"));
            acceso = single;
            dao.puntuar(id, p);
        }
    RequestDispatcher vista = request.getRequestDispatcher(acceso);
    vista.forward(request, response);
    
}


    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
}
