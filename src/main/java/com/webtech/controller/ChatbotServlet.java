package com.webtech.controller;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ChatbotServlet")
public class ChatbotServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        String userInput = request.getParameter("userInput");

        if (userInput == null || userInput.trim().isEmpty()) {
            response.getWriter().write("I didn't understand that. Please try again.");
            return;
        }

        userInput = userInput.toLowerCase();

        // Predefined responses
        HashMap<String, String> responses = new HashMap<>();
        responses.put("hi", "Hello! How can I assist you today?");
        responses.put("hello", "Hi there! What do you need help with?");
        responses.put("services", "We offer Custom Induction Heating Coils, Silver Brazing Job Works, and Maintenance & Repair Services.");
        responses.put("contact", "You can reach us at +1 234 567 890 or info@sai-enterprises.com.");
        responses.put("location", "We are located at 123 Industry Street, Tech City.");
        responses.put("bye", "Goodbye! Have a great day.");

        String chatbotResponse = responses.getOrDefault(userInput, "I'm not sure about that. Please contact our support team for more details.");

        response.setContentType("text/plain");
        response.getWriter().write(chatbotResponse);
    }
}
