package com.java.easybank_v4.Entities;


import jakarta.persistence.*;
import lombok.*;
@Entity
@NoArgsConstructor
@Inheritance
@Data
public class CompteEpargne extends Compte {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer numero;
    private Double tauxInteret;
}

