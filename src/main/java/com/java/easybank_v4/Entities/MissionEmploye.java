package com.java.easybank_v4.Entities;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
public class MissionEmploye
{
    private String code;
    private LocalDate dateDebut;
    private LocalDate dateFin;
    private Mission mission;
    private Employee employee;


}
