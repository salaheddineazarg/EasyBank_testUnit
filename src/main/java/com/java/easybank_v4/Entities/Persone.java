package com.java.easybank_v4.Entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import java.time.LocalDate;
@Data
@NoArgsConstructor
@AllArgsConstructor
@MappedSuperclass
public class Persone {
   @NotNull
   protected String nom;
    @NotNull
    protected String prenom;
    @NotNull
    protected LocalDate dateNaissance;
    @NotNull
    protected String tel;
}
