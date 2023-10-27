package com.java.easybank_v4.Entities;


import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Data
@Table(name = "agence")
@NoArgsConstructor
public class Agence {
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Long code;

    private String nom;

    private String address;

    private String tel;

    @OneToMany(mappedBy = "agence")
    private List<Employee> employees;



}
