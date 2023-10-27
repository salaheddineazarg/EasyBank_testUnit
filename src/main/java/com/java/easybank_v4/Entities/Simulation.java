package com.java.easybank_v4.Entities;

import lombok.*;


@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
public class Simulation {
    @NonNull private double capitalEmprunte;
    @NonNull private double tauxAnnuel;
    @NonNull private int nombreMensualite;
}
