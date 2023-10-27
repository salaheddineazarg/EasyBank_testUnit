package com.java.easybank_v4.services;

import com.java.easybank_v4.Entities.Agence;
import com.java.easybank_v4.Entities.Employee;
import com.java.easybank_v4.dao.Interfaces.AgenceI;
import com.java.easybank_v4.dao.Interfaces.EmployeeI;

import java.util.List;

public class EmployeeService {

    private EmployeeI employeeDao;
    public void setEmployeeDao(EmployeeI employeeDao) {
        this.employeeDao =employeeDao;
    }
    public EmployeeI getAgenceDao() {
        return employeeDao;
    }


    public Employee create(Employee employee){


        return getAgenceDao().ajoute(employee).orElse(null);

    }

    public boolean delete(Long id) {

        if (id.toString().isEmpty() || employeeDao.chercherParId(id).isEmpty()) {
            return false;
        }else {
            return employeeDao.supprime(id);
        }
    }



    public Employee findByID(Long id) throws Exception {
        if (id.toString().isEmpty() || id <= 0) {
            throw new Exception("Employee id cannot be empty or less than zero");
        }else {
            return employeeDao.chercherParId(id).orElse(null);
        }
    }


    public Employee update(Employee employee) throws Exception {

        if (employeeDao.chercherParId(employee.getId()).isEmpty()) {
            throw new Exception("Agence cannot be null check out again if the id is valid");
        }else {
            return employeeDao.modifier(employee).get();
        }
    }




    public List<Employee> getAll(){



        return employeeDao.afficher();
    }
}
