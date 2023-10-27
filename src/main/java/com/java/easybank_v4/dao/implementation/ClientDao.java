package com.java.easybank_v4.dao.implementation;

import com.java.easybank_v4.Config.HibernateUtil;
import com.java.easybank_v4.Entities.Client;
import com.java.easybank_v4.dao.Interfaces.ClientI;
import com.java.easybank_v4.dao.Interfaces.DataI;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Queue;

public class ClientDao implements ClientI {
    private final EntityManager entityManager;

    public ClientDao() {

        entityManager = HibernateUtil.getEntityManagerFactory().createEntityManager();
    }

    @Override
    public Optional<Client> ajoute(Client client) {
        EntityTransaction transaction = null;
        try {
            transaction = entityManager.getTransaction();
            transaction.begin();
            entityManager.persist(client);
            transaction.commit();
            return Optional.of(client);
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
    public boolean supprime(Integer id) {
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            Client client = entityManager.find(Client.class,id);
            if (client != null) {
                entityManager.remove(client);
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
    public Optional<Client> modifier(Client client) {

        EntityTransaction transaction = entityManager.getTransaction();

        try {
            transaction.begin();
            Client mergedClient = entityManager.merge(client);
            transaction.commit();

            return Optional.of(mergedClient);
        } catch (Exception e) {

            if (transaction.isActive()) {
                transaction.rollback();
            }
            return Optional.empty();
        }
    }


    @Override
    public Optional<Client> chercherParId(Integer id) {
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            Client client = entityManager.find(Client.class,id);
            transaction.commit();
            return Optional.of(client);
        } catch (Exception e) {
            e.printStackTrace();
            return Optional.empty();
        }

    }

    @Override
    public List<Client> afficher() {

        TypedQuery<Client> query = entityManager.createQuery("FROM Client", Client.class);
        return query.getResultList();

    }
}
