package com.softserve.itacademy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/update")
public class UpdateRecordServlet extends HttpServlet {

    private AddressBook addressBook;

    private String firstName;
    private String lastName;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        addressBook.update(firstName, lastName, request.getParameter("address"));
        response.sendRedirect("/records/list");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String address = addressBook.read(request.getParameter("first-name"), request.getParameter("last-name"));
        firstName = request.getParameter("first-name");
        lastName = request.getParameter("last-name");

        request.setAttribute("first-name", firstName);
        request.setAttribute("last-name", lastName);

        if (address == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        } else {
            request.setAttribute("address", address);
            request.getRequestDispatcher("/WEB-INF/update-record.jsp").forward(request, response);
        }

    }
}
