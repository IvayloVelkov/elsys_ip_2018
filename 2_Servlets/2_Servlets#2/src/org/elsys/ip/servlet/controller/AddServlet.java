package org.elsys.ip.servlet.controller;

import org.elsys.ip.servlet.model.User;
import org.elsys.ip.servlet.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddServlet")
public class AddServlet extends HttpServlet {
    private UserService service = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int userId = service.getUsers().size() + 1;

        service.addNewUser(new User(userId,
                request.getParameter("name"),
                request.getParameter("email")));

        response.sendRedirect("/admin");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        getServletContext().getRequestDispatcher("/WEB-INF/addUser.jsp").forward(request, response);
    }
}
