package com.java.easybank_v4.Entities;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@Inheritance
@Data
public class CompteCourant extends Compte {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer numero;
    private Double decouvert;
}