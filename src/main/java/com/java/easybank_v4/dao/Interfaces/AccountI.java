package com.java.easybank_v4.dao.Interfaces;



import java.util.List;

public interface AccountI<Type> {

    public List<Type> chercherComptesParClient(int idClient);

    boolean changerEtatCompte(int numeroCompte);

}
