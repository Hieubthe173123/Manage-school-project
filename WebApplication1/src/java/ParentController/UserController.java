package ParentController;

import DAO.ParentDBContext;
import DAO.StudentDBContext;
import Entity.Account;
import Entity.Parent;
import Entity.Student;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

public class UserController extends HttpServlet {

   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
   HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("account");

        if (acc != null) {
            ParentDBContext parentDB = new ParentDBContext();
            Parent pa = parentDB.getParentByid(acc.getPid());
            request.setAttribute("pa", pa);

            StudentDBContext studentDB = new StudentDBContext();
            List<Student> stu = studentDB.getStudentByIdUser(pa.getPid());

            if (stu == null) {
                stu = new ArrayList<>(); // Ensure it's not null
            }
            request.setAttribute("stu", stu);

            request.getRequestDispatcher("FE_Parent/ParentProfile.jsp").forward(request, response);
        } else {
            response.sendRedirect("Login.jsp");
        }
}

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
