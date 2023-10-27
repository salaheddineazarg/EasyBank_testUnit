package com.java.easybank_v4.Entities;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;



@NoArgsConstructor
@Data
@MappedSuperclass
public class Compte {


    protected Double solde;
    protected LocalDate dateCreation;

    @Enumerated(EnumType.STRING)
    protected Etat etat;

    @ManyToOne
    protected Client client;

    @ManyToOne
    protected Employee employee;


}


