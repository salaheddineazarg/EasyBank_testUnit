package com.java.easybank_v4.Entities;


import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;


@Data
@NoArgsConstructor
public abstract class Operation {
    protected  String code;
    protected LocalDateTime dateCreation;
    protected Double montant;
    protected Compte compte;
    protected Employee employee;


}
