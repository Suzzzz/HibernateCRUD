/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import HrmServices.TaskServices;
import Models.Task;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Array;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Suharsha
 */
@WebServlet(name = "searchAssignTaskController", urlPatterns = {"/searchAssignTaskController"})
public class searchAssignTaskController extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
          //String emp_id=request.getParameter("EmpID");
            String emp_id=request.getParameter("EmpID");
          TaskServices acs=new TaskServices();
         //Role role_obj= acs.searchRole(role_id);
         
         String arry[] = new String[2];
         String tID=null;
            try {
                Task task_obj= acs.searchassignTask(emp_id);
                tID= Integer.toString(task_obj.getTaskid());
                
            } catch (Exception e) {
                tID="x";
            }
         
         
         arry[0] = emp_id;
         arry[1] = tID;
         
         RequestDispatcher rd =request.getRequestDispatcher("Assign_Tasks.jsp"); 
         request.setAttribute("searchResult", arry);
         rd.forward(request, response);
        } finally {            
            out.close();
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
        processRequest(request, response);
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
        processRequest(request, response);
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
