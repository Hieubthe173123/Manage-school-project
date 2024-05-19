/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Hompage;

import DAO.LecturersDBContext;
import DAO.ParentDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Random;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ForgotPassword", urlPatterns = {"/forgot"})
public class ForgotPassword extends HttpServlet {

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
            out.println("<title>Servlet ForgotPassword</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgotPassword at " + request.getContextPath() + "</h1>");
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
       request.getRequestDispatcher("FE_Parent/ForgotPassword.jsp").forward(request, response);
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
        String mail_raw = request.getParameter("mailForgot");
        LecturersDBContext lec = new LecturersDBContext();
        ParentDBContext par = new ParentDBContext();
        if ((lec.getLecturerByEmail(mail_raw) == null) && (par.getParentByGmail(mail_raw) == null)) {
            request.setAttribute("err", "Email bạn nhập đã sai hoặc không tồn tại!");
            request.getRequestDispatcher("FE_Parent/ForgotPassword.jsp").forward(request, response);
        } else if( (par.getParentByGmail(mail_raw) != null) || (lec.getLecturerByEmail(mail_raw) != null) ) {
            request.setAttribute("err", createNewPassword());
            request.getRequestDispatcher("FE_Parent/ForgotPassword.jsp").forward(request, response);
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
    
    String finalPassword = "";
    
    String createNewPassword() {
        String string = "";

        for (char c = 'a'; c <= 'z'; c++) {
            string += c;
        }

        for (char c = 'A'; c <= 'Z'; c++) {
            string += c;
        }

        for (char c = '0'; c <= '9'; c++) {
            string += c;
        }

        do {
            String pass = "";
            boolean haveLowerChar = false;
            boolean haveUpperChar = false;
            boolean haveDigit = false;
            //loop use to generate 5 charater into capcha
            for (int i = 0; i < 10; i++) {
                Random random = new Random();
                int index = random.nextInt(string.length());
                char newChar = string.charAt(index);
                //check newchar must be in range from character a to z
                if (newChar >= 'a' && newChar <= 'z') {
                    haveLowerChar = true;
                } else //check newchar must be in range from character A to Z
                    if (newChar >= 'A' && newChar <= 'Z') {
                    haveUpperChar = true;
                } else {
                    haveDigit = true;
                }
                pass += newChar;
            }
            //check value of boolean variable haveDigit, haveLowerChar, and haveUpperChar
            if (haveDigit && haveLowerChar && haveUpperChar) {
                finalPassword = pass;
                break;
            } else {
                continue;
            }
        } while (true);
        return finalPassword;
    }
}
