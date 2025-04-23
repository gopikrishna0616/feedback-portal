package com.example;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class FeedbackServlet extends HttpServlet {
    private static final List<String> feedbacks = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String rating = request.getParameter("rating");
        String comment = request.getParameter("comment");

        String entry = "Rating: " + rating + " | Comment: " + comment;
        feedbacks.add(entry);

        response.sendRedirect("index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("feedbacks", feedbacks);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
}
