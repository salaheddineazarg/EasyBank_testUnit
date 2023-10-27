package com.java.easybank_v4.services;

import com.java.easybank_v4.Entities.Client;
import com.java.easybank_v4.Entities.DemanderCredit;
import com.java.easybank_v4.dao.Interfaces.DemandeI;

import java.util.List;
import java.util.Optional;

public class DemandeService {
    private DemandeI demandeDao;

    public DemandeI getDemandDao() {
        return demandeDao;
    }

    public void setDemandDao(DemandeI demandDao) {
        this.demandeDao = demandDao;
    }


    public DemanderCredit ajouter(DemanderCredit demande) {
     double Total =   this.calculateMonthlyPayment(demande.getCapitalEmprunte(),demande.getDate());
        if (Total == demande.getNombreMensualite()){
            return demandeDao.ajoute(demande).orElse(null);
        }else{
            return null;
        }
    }

    public boolean delete(Integer id){
        if (id.toString().isEmpty() || demandeDao.chercherParId(id).isEmpty()) {
            return false;
        }else {
            return demandeDao.supprime(id);
        }
    }
    public DemanderCredit  update(DemanderCredit demanderCredit)  throws Exception{
        if (demandeDao.chercherParId(demanderCredit.getNumero()).isEmpty()) {
            throw new Exception("Credit request cannot be null check out again if the id is valid");
        }else {
            return demandeDao.modifier(demanderCredit).get();
        }
    }

    public DemanderCredit  findById(Integer id) throws  Exception{
        if (id.toString().isEmpty() || id <= 0) {
            throw new Exception("Request Demande id cannot be empty or less than zero");
        }else {
            return demandeDao.chercherParId(id).orElse(null);
        }

    }

    public List<DemanderCredit> afficher() {


        return demandeDao.afficher();

    }

    private static double calculateMonthlyPayment(double M, int n) {
        double t = 0.03 / 12;
        double denominator = 1 - Math.pow((1 + t), -n);

        return (M * t) / denominator;
    }

}
