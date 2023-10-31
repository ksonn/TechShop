/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Login;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import DAO.AccountDAO;
import Model.Account.Role;
import Model.Account.User;
import java.sql.Date;

public class Registration extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("frontend/jsp/login/registration.jsp").forward(request, response);
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
        String raw_fullName = request.getParameter("name");
        String raw_email = request.getParameter("email");
        String raw_pass = request.getParameter("password");
        String raw_mobile = request.getParameter("mobile");
        String raw_gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String raw_dob = request.getParameter("dob");

        RegexChecking v = new RegexChecking();

        final String registrationJsp = "frontend/jsp/login/registration.jsp";
        //check information of user is validated
        if (v.checkString(raw_fullName) && v.validateEmail(raw_email) && v.validatePass(raw_pass) && v.validateMobile(raw_mobile)) {
            String name = raw_fullName;
            String email = raw_email;
            String pass = raw_pass;
            String mobile = raw_mobile;

            AccountDAO dAc = new AccountDAO();
            //check email is exist
            User accExist = dAc.getAccount(email, pass);

            if (accExist == null) {
                boolean gender = raw_gender.equals("Male");
                Date dob = Date.valueOf(raw_dob);

                //insert to user table
                User u = new User();
                u.setEmail(email);
                u.setName(name);
                u.setGender(gender);
                u.setPhone(mobile);
                u.setAddress(address);
                u.setDob(dob);
                u.setPassword(pass);
                Role r = new Role();
                r.setId(3);
                u.setRole(r);

                dAc.insertAccount(u);
                request.setAttribute("ok", "Register successfully!");
                request.getRequestDispatcher(registrationJsp).forward(request, response);
            } else {
                String exist = "This account is already exist. Try a new email!";
                request.setAttribute("exist", exist);
                request.getRequestDispatcher(registrationJsp).forward(request, response);
            }
        } else {
            String error = "You need to enter the correct requirements for each subscription.";
            request.setAttribute("error", error);
            request.getRequestDispatcher(registrationJsp).forward(request, response);
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
