package com.java.easybank_v4.controllers;


import com.java.easybank_v4.Entities.Agence;
import com.java.easybank_v4.Entities.Employee;
import com.java.easybank_v4.dao.implementation.EmployeeDao;
import com.java.easybank_v4.services.EmployeeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;

@WebServlet(urlPatterns = {"/employees"})
public class EmployeeServlet extends HttpServlet {



    private EmployeeService employeeService;
    private Employee employee;


    @Override
    public void init() throws ServletException {
        this.employeeService = new EmployeeService();
        employeeService.setEmployeeDao(new EmployeeDao());

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

        try {
            employee = new Employee();
            employee.setNom("azarag");
            employee.setPrenom("salah");
            employee.setEmail("dddddddd");
            employee.setDateRecrutement(LocalDate.parse("2023-02-20"));
            employee.setDateNaissance(LocalDate.parse("2023-02-20"));
            employee.setTel("0049484848448");
            Agence agence = new Agence();
            agence.setCode(1L);
            employee.setAgence(agence);
            Employee employee1 = employeeService.create(employee);
            System.out.println(employee1);
            resp.sendRedirect(req.getContextPath() + "/dashboard");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    private void delete(HttpServletRequest req, HttpServletResponse resp) throws Exception {


        boolean isDeleted =employeeService.delete(Long.valueOf(req.getParameter("clientId")));
        if (isDeleted) {
            resp.sendRedirect(req.getContextPath() + "/dashboard");
        }
    }


    private void update(HttpServletRequest req, HttpServletResponse resp) throws Exception {

        try {

            resp.sendRedirect(req.getContextPath() + "/dashboard");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    private void findByID(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long code = Long.parseLong(req.getParameter("code"));
        if (code != 0) {
            try {
                Employee employee =employeeService.findByID(code);
                req.setAttribute("employee",employee);
                req.getRequestDispatcher("web/update.jsp").forward(req, resp);
            }  catch (Exception e) {
                e.printStackTrace();
            }
        }

    }
}
