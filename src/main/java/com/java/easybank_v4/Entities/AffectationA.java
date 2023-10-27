package com.java.easybank_v4.Entities;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
@Data
@NoArgsConstructor
public class AffectationA {

    private LocalDate CreationDate;



    private Employee employee;
}
