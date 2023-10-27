package com.java.easybank_v4.Config;


import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.PersistenceUnit;

public class HibernateUtil {
    private static final String PERSISTENCE_UNIT_NAME = "PERSISTENCE";

    private static EntityManagerFactory factory;

    public static EntityManagerFactory getEntityManagerFactory() {
        if (factory == null) {
            factory = Persistence.createEntityManagerFactory
                    (PERSISTENCE_UNIT_NAME);
        }
        return factory;
    }

    public static void setEntityManagerFactory(EntityManagerFactory entityManagerFactory) {
        factory = entityManagerFactory;
    }

    public static void shutdown() {
        if (factory != null) {
            factory.close();
        }
    }
}
