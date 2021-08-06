/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.RequestDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Department;
import model.Request;

/**
 *
 * @author Vuong Van Truong
 */
@WebServlet(name = "ViewRequestController", urlPatterns = {"/ViewRequestController"})
public class ViewRequestController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ViewRequestController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewRequestController at " + request.getContextPath() + "</h1>");
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
               try {
            RequestDAO requestDAO = new RequestDAO();
            List<Department> departList = requestDAO.getDepart();
            request.setAttribute("departList", departList);          
            SimpleDateFormat formatter2 = new SimpleDateFormat("EEEEE dd/MM/yyyy");
            Date date = new Date();
            String datenow = formatter2.format(date);
            request.setAttribute("datenow", datenow);
            String day = request.getParameter("date");
            if(day ==null){
                List<Request> list = requestDAO.getAll();
                request.setAttribute("list", list);          
            }else{
                List<Request> list = requestDAO.getAllbyDate(day);
                request.setAttribute("list", list);
            }          
            request.getRequestDispatcher("ViewRequest.jsp").forward(request, response);
             
        } catch (Exception e) {

        }
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
                try {
            RequestDAO requestDAO = new RequestDAO();
            List<Department> departList = requestDAO.getDepart();
            request.setAttribute("departList", departList);           
            String title = request.getParameter("title");
            String depart = request.getParameter("depart");
            List<Request> list = requestDAO.search(title,depart);
            request.setAttribute("list", list);
            request.getRequestDispatcher("ViewRequest.jsp").forward(request, response);
        } catch (Exception e) {

        }
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
