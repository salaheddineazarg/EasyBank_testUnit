package com.java.easybank_v4.controllers;

import com.java.easybank_v4.Entities.Client;
import com.java.easybank_v4.dao.implementation.ClientDao;
import com.java.easybank_v4.services.ClientService;
import jakarta.inject.Inject;
import jakarta.persistence.Id;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "ClientServlet",urlPatterns = {"/clients","/client"})
public class ClientServlet extends HttpServlet {

    private ClientService clientService;

    private Client client;


    @Override
    public void init() throws ServletException {
        this.clientService = new ClientService();
        clientService.setClientDao(new ClientDao());

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        findClientByID(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        switch (action) {
            case "save":
                try {
                    insertClient(req, resp);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
                break;
            case "delete":
                try {
                    deleteClient(req, resp);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
                break;
            case "update":
                try {
                    updateClient(req,resp);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
                break;
        }


    }

    private void insertClient(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        client = new Client();
        try {
            client = new Client();
            client.setPrenom(req.getParameter("firstName"));
            client.setNom(req.getParameter("lastName"));
            client.setTel(req.getParameter("phone"));
            client.setDateNaissance(LocalDate.parse(req.getParameter("date")));
            client.setAddress(req.getParameter("adresse"));
            clientService.create(client);
            resp.sendRedirect(req.getContextPath() + "/dashboard");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    private void deleteClient(HttpServletRequest req, HttpServletResponse resp) throws Exception {


        boolean isDeleted = clientService.delete(Integer.valueOf(req.getParameter("clientId")));
        if (isDeleted) {
            resp.sendRedirect(req.getContextPath() + "/dashboard");
        }
    }


    private void updateClient(HttpServletRequest req, HttpServletResponse resp) throws Exception {

        try {
            client = new Client();
            client.setCode(Integer.parseInt(req.getParameter("code")));
            client.setPrenom(req.getParameter("firstName"));
            client.setNom(req.getParameter("lastName"));
            client.setTel(req.getParameter("phone"));
            client.setDateNaissance(LocalDate.parse(req.getParameter("date")));
            client.setAddress(req.getParameter("adresse"));
            clientService.updateClient(client);
            resp.sendRedirect(req.getContextPath() + "/dashboard");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    private void findClientByID(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int code = Integer.parseInt(req.getParameter("code"));
        if (code != 0) {
            try {
                Client client = clientService.findClientByID(code);
                  req.setAttribute("client",client);
                    req.getRequestDispatcher("web/update.jsp").forward(req, resp);
            }  catch (Exception e) {
                e.printStackTrace();
            }
        }

    }
}