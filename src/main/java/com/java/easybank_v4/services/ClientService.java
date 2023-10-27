package com.java.easybank_v4.services;

import com.java.easybank_v4.Entities.Client;
import com.java.easybank_v4.dao.Interfaces.ClientI;
import com.java.easybank_v4.dao.implementation.ClientDao;
import jakarta.enterprise.context.ApplicationScoped;

import java.util.ArrayList;
import java.util.List;


public class ClientService {

    private ClientI clientDao ;
    public void setClientDao(ClientI clientDao) {
        this.clientDao = clientDao;
    }
    public ClientI getClientDao() {
        return clientDao;
    }


    public Client create(Client client){
        System.out.println(client.getNom());

        return getClientDao().ajoute(client).orElse(null);

    }

    public boolean delete(Integer id) {

        if (id.toString().isEmpty() || clientDao.chercherParId(id).isEmpty()) {
            return false;
        }else {
            return clientDao.supprime(id);
        }
    }



    public Client findClientByID(Integer id) throws Exception {
        if (id.toString().isEmpty() || id <= 0) {
            throw new Exception("Client id cannot be empty or less than zero");
        }else {
            return clientDao.chercherParId(id).orElse(null);
        }
    }


       public Client updateClient(Client client) throws Exception {

           if (clientDao.chercherParId(client.getCode()).isEmpty()) {
               throw new Exception("Client cannot be null check out again if the id is valid");
           }else {
               return clientDao.modifier(client).get();
           }
       }




    public List<Client>  getAll(){



      return clientDao.afficher();
    }
}
