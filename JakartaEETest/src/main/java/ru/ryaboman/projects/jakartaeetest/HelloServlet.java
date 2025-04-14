package ru.ryaboman.projects.jakartaeetest;

import java.io.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        HttpSession session = request.getSession();
        Integer count = (Integer) session.getAttribute("count");
        if (count == null) {
            count = 0;
        }
        session.setAttribute("count", ++count );

        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("<p>" + "Вы посетили страницу " + count + " раз." + "</p>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}