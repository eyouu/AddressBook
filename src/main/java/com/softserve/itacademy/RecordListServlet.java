package com.softserve.itacademy;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/list")
public class RecordListServlet extends HttpServlet {

    private AddressBook addressBook;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/record-list.jsp");
        request.setAttribute("records", addressBook);
        requestDispatcher.forward(request, response);

        String sort = request.getParameter("sort");
        switch (sort) {
            case "asc":
                addressBook.sortedBy(SortOrder.ASC);
                break;
            case "desc":
                addressBook.sortedBy(SortOrder.DESC);
        }
    }
}
