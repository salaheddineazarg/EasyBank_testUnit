package com.java.easybank_v4.services;
import com.java.easybank_v4.Entities.Agence;
import com.java.easybank_v4.dao.Interfaces.AgenceI;


import java.util.List;

public class AgenceService {
    private AgenceI agencedao;
    public void setAgenceDao(AgenceI agencedao) {
        this.agencedao = agencedao;
    }
    public AgenceI getAgenceDao() {
        return agencedao;
    }


    public Agence create(Agence agence){


        return getAgenceDao().ajoute(agence).orElse(null);

    }

    public boolean delete(Long id) {

        if (id.toString().isEmpty() || agencedao.chercherParId(id).isEmpty()) {
            return false;
        }else {
            return agencedao.supprime(id);
        }
    }



    public Agence findByID(Long id) throws Exception {
        if (id.toString().isEmpty() || id <= 0) {
            throw new Exception("Agence id cannot be empty or less than zero");
        }else {
            return agencedao.chercherParId(id).orElse(null);
        }
    }


    public Agence update(Agence agence) throws Exception {

        if (agencedao.chercherParId(agence.getCode()).isEmpty()) {
            throw new Exception("Agence cannot be null check out again if the id is valid");
        }else {
            return agencedao.modifier(agence).get();
        }
    }




    public List<Agence> getAll(){



        return agencedao.afficher();
    }


}
