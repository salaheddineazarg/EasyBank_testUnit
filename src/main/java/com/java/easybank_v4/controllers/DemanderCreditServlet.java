package com.java.easybank_v4.controllers;

import com.java.easybank_v4.Entities.*;
import com.java.easybank_v4.dao.Interfaces.DemandeI;
//import com.java.easybank_v4.dao.implementation.DemandeDao;
import com.java.easybank_v4.dao.implementation.DemandeDao;
import com.java.easybank_v4.services.DemandeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
@WebServlet(name = "demande", urlPatterns ={"/demande_test"} )
public class DemanderCreditServlet extends HttpServlet {
    private DemandeI demandeDao;
    private DemanderCredit demanderCredit;
    private DemandeService demandeService;
    double mensualite;
    @Override
    public void init() throws ServletException {

        demandeService.setDemandDao(new DemandeDao());
        demandeService = new DemandeService();

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            insert(req,resp);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        switch (action) {
            case "save":

                break;
            case "delete":
                try {
                    delete(req, resp);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
                break;
            case "update":
                try {
                    update(req,resp);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }



    private void insert(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        demanderCredit = new DemanderCredit();
        try {
            demanderCredit.setCapitalEmprunte(50000.00);
            demanderCredit.setNombreMensualite(214.91);
            demanderCredit.setCreditStatut(Enum.valueOf(CreditStatut.class,"EnAttente"));
            demanderCredit.setDate(24);
            demanderCredit.setRemarques("hello everyone");
            Client client = new Client();
            client.setCode(1);
            demanderCredit.setClient(client);
             demandeService.ajouter(demanderCredit);
            resp.sendRedirect(req.getContextPath() + "/dashboard");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    private void delete(HttpServletRequest req, HttpServletResponse resp) throws Exception {


        boolean isDeleted = demandeService.delete(Integer.valueOf(req.getParameter("demenedeId")));
        if (isDeleted) {
            resp.sendRedirect(req.getContextPath() + "/dashboard");
        }
    }


    private void update(HttpServletRequest req, HttpServletResponse resp) throws Exception {

        try {
            demanderCredit = new DemanderCredit();
            demandeService.update(demanderCredit);
            resp.sendRedirect(req.getContextPath() + "/dashboard");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    private void findByID(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int code = Integer.parseInt(req.getParameter("code"));
        if (code != 0) {
            try {
                DemanderCredit demanderCredit = demandeService.findById(code);
                req.setAttribute("client",demanderCredit);
                req.getRequestDispatcher("web/update.jsp").forward(req, resp);
            }  catch (Exception e) {
                e.printStackTrace();
            }
        }

    }


}
