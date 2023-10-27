package com.java.easybank_v4.dao.implementation;

import com.java.easybank_v4.Config.HibernateUtil;
import com.java.easybank_v4.Entities.Agence;
import com.java.easybank_v4.Entities.Employee;
import com.java.easybank_v4.dao.Interfaces.EmployeeI;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

import java.util.List;
import java.util.Optional;

public class EmployeeDao implements EmployeeI {

    private final EntityManager entityManager;

    public EmployeeDao() {

        entityManager = HibernateUtil.getEntityManagerFactory().createEntityManager();
    }
    @Override
    public Optional<Employee> ajoute(Employee employee) {
        EntityTransaction transaction = null;
        try {
            transaction = entityManager.getTransaction();
            transaction.begin();
            entityManager.persist(employee);
            transaction.commit();
            return Optional.of(employee);
        } catch (Exception ex) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            entityManager.close();
        }

        return Optional.empty();

    }

    @Override
    public boolean supprime(Long id) {
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            Employee employee = entityManager.find(Employee.class,id);
            if (employee != null) {
                entityManager.remove(employee);
                transaction.commit();
                return true;
            } else {
                transaction.rollback();
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    @Override
    public Optional<Employee> modifier(Employee employee) {
        EntityTransaction transaction = entityManager.getTransaction();

        try {
            transaction.begin();
            Employee merged = entityManager.merge(employee);
            transaction.commit();

            return Optional.of(merged);
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction.isActive()) {
                transaction.rollback();
            }
            return Optional.empty();
        }


    }

    @Override
    public Optional<Employee> chercherParId(Long id) {

        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            Employee employee = entityManager.find(Employee.class,id);
            transaction.commit();
            return Optional.of(employee);
        } catch (Exception e) {
            e.printStackTrace();
            return Optional.empty();
        }

    }

    @Override
    public List<Employee> afficher() {
        TypedQuery<Employee> query = entityManager.createQuery("FROM Employee ",Employee.class);
        return query.getResultList();
    }
}
