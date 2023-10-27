package com.java.easybank_v4.dao.implementation;

import com.java.easybank_v4.Config.HibernateUtil;
import com.java.easybank_v4.Entities.DemanderCredit;
import com.java.easybank_v4.dao.Interfaces.DemandeI;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;
import java.util.Optional;

public class DemandeDao implements DemandeI {
    @Override
    public Optional<DemanderCredit> ajoute(DemanderCredit demanderCredit) {
        return Optional.empty();
    }

    @Override
    public boolean supprime(Integer id) {
        return false;
    }

    @Override
    public Optional<DemanderCredit> modifier(DemanderCredit demanderCredit) {
        return Optional.empty();
    }

    @Override
    public Optional<DemanderCredit> chercherParId(Integer id) {
        return Optional.empty();
    }

    @Override
    public List<DemanderCredit> afficher() {
        return null;
    }
}




