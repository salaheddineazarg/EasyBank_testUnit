package com.java.easybank_v4.Entities;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;






@Entity
@Getter
@Setter
public class DemanderCredit {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int numero;

    private Double capitalEmprunte;
    private double nombreMensualite;
    private String remarques;
    @Enumerated(EnumType.STRING)
    private CreditStatut creditStatut;
    @Column(name = "date_demande")
    private int date;
    @ManyToOne
    @JoinColumn(name = "client_id")
    private Client client;


}