package com.java.easybank_v4.Entities;

import jakarta.persistence.*;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.LocalDate;

@Entity
@Table(name = "employee")
@Data
@Inheritance
public class Employee extends Persone {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String email;
    private LocalDate dateRecrutement;
    @ManyToOne
    @JoinColumn(name = "agence_code")
    private Agence agence;

}
