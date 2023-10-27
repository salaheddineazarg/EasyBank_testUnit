package com.java.easybank_v4.controllers;


import com.java.easybank_v4.Entities.Client;
import com.java.easybank_v4.dao.implementation.ClientDao;
import com.java.easybank_v4.services.ClientService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


@WebServlet(name = "dashboardServlet",urlPatterns = {"/dashboard"})
public class DashboardServlet extends HttpServlet {


    private ClientService clientService = new ClientService();
    @Override
    public void init() throws ServletException {
       this.clientService.setClientDao(new ClientDao())
       ;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
             resp.setContentType("text/html");

           req.setAttribute("clients",clientService.getAll());
             req.getRequestDispatcher("web/dashboard.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
