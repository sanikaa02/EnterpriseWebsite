package com.webtech.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.webtech.dao.*;

@WebServlet("/ContactAdmin")
public class ContactAdmin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String service = request.getParameter("service");
        String message = request.getParameter("message");

        ContactDAO contactDAO = new ContactDAO();
        boolean result = contactDAO.saveContactDetails(name, email, phone, service, message);

        if (result) {
        	response.sendRedirect("success.jsp");
        } else {
            response.getWriter().println("Error in Sending Message.");
        }
    }
}
