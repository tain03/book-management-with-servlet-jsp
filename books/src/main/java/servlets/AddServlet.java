package servlets;

import entities.Book;
import models.Model;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect(req.getContextPath() + "/add.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        int year = Integer.parseInt(req.getParameter("year"));

        Book book = new Book(title, author, year);
        Model model = Model.getInstance();
        model.add(book);

        // Redirect to list servlet after adding user
        resp.sendRedirect(req.getContextPath() + "/list");
    }
}
