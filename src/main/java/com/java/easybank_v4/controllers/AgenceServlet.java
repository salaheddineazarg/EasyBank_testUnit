package com.java.easybank_v4.controllers;

import com.java.easybank_v4.Entities.Agence;
import com.java.easybank_v4.Entities.Client;
import com.java.easybank_v4.dao.implementation.AgenceDao;
import com.java.easybank_v4.dao.implementation.ClientDao;
import com.java.easybank_v4.services.AgenceService;
import com.java.easybank_v4.services.ClientService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;


@WebServlet(urlPatterns = {"/agences"})
public class AgenceServlet  extends HttpServlet {


    private AgenceService agenceService;

    private Agence agence;


    @Override
    public void init() throws ServletException {
        this.agenceService = new AgenceService();
        agenceService.setAgenceDao(new AgenceDao());

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            insert(req, resp);
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
        agence = new Agence();
        try {
          agence.setNom("Agence1");
          agence.setAddress("safi");
          agence.setTel("393844040383");

          Agence agence1 =agenceService.create(agence);

            System.out.println(agence1);
            resp.sendRedirect(req.getContextPath() + "/dashboard");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    private void delete(HttpServletRequest req, HttpServletResponse resp) throws Exception {


        boolean isDeleted = agenceService.delete(Long.valueOf(req.getParameter("clientId")));
        if (isDeleted) {
            resp.sendRedirect(req.getContextPath() + "/dashboard");
        }
    }


    private void update(HttpServletRequest req, HttpServletResponse resp) throws Exception {

        try {

           agenceService.update(agence);
            resp.sendRedirect(req.getContextPath() + "/dashboard");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    private void findByID(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long code = Long.parseLong(req.getParameter("code"));
        if (code != 0) {
            try {
               Agence agence = agenceService.findByID(code);
                req.setAttribute("client",agence);
                req.getRequestDispatcher("web/update.jsp").forward(req, resp);
            }  catch (Exception e) {
                e.printStackTrace();
            }
        }

    }
}
