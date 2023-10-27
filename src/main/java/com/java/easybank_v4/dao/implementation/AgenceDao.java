package com.java.easybank_v4.dao.implementation;

import com.java.easybank_v4.Config.HibernateUtil;
import com.java.easybank_v4.Entities.Agence;
import com.java.easybank_v4.Entities.Client;
import com.java.easybank_v4.dao.Interfaces.AgenceI;
import com.java.easybank_v4.dao.Interfaces.DataI;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

import java.util.List;
import java.util.Optional;

public class AgenceDao implements AgenceI {
    private final EntityManager entityManager;

    public AgenceDao() {

        entityManager = HibernateUtil.getEntityManagerFactory().createEntityManager();
    }

    @Override
    public Optional<Agence> ajoute(Agence agence) {
        EntityTransaction transaction = null;
        try {
            transaction = entityManager.getTransaction();
            transaction.begin();
            entityManager.persist(agence);
            transaction.commit();
            return Optional.of(agence);
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
            Agence agence = entityManager.find(Agence.class,id);
            if (agence != null) {
                entityManager.remove(agence);
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
    public Optional<Agence> modifier(Agence agence) {

        EntityTransaction transaction = entityManager.getTransaction();

        try {
            transaction.begin();
            Agence mergedAgence = entityManager.merge(agence);
            transaction.commit();

            return Optional.of(mergedAgence);
        } catch (Exception e) {

            if (transaction.isActive()) {
                transaction.rollback();
            }
            return Optional.empty();
        }
    }


    @Override
    public Optional<Agence> chercherParId(Long id) {
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            Agence agence = entityManager.find(Agence.class,id);
            transaction.commit();
            return Optional.of(agence);
        } catch (Exception e) {
            e.printStackTrace();
            return Optional.empty();
        }

    }

    @Override
    public List<Agence> afficher() {

        TypedQuery<Agence> query = entityManager.createQuery("FROM Agence ",Agence.class);
        return query.getResultList();

    }
}
