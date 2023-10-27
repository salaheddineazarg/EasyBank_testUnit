package com.java.easybank_v4.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet(urlPatterns = {"/simulation"})
public class SimulationServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("./web/simulation.jsp").forward(req,resp);
    }


}
