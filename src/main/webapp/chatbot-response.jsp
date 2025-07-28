<%@ page import="java.util.HashMap" %>
<%@ page language="java" contentType="text/plain; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    // Debugging: Print received input
    String userInput = request.getParameter("userInput");
    if (userInput == null || userInput.trim().isEmpty()) {
        out.print("Error: No input received.");
        return;
    }

    // Convert input to lowercase
    userInput = userInput.toLowerCase().trim();

    // Debugging: Print the user input
    out.print("User Input Received: " + userInput + "<br>");

    // Predefined responses
    HashMap<String, String> responses = new HashMap<>();
    responses.put("hi", "Hello! How can I assist you today?");
    responses.put("hello", "Hi there! What do you need help with?");
    responses.put("services", "We offer Custom Induction Heating Coils, Silver Brazing Job Works, and Maintenance & Repair Services.");
    responses.put("contact", "You can reach us at +1 234 567 890 or info@sai-enterprises.com.");
    responses.put("location", "We are located at 123 Industry Street, Tech City.");

    // Get response
    String botResponse = responses.getOrDefault(userInput, "I'm not sure about that. Please contact our support team for more details.");

    // Send response
    out.print(botResponse);
%>
