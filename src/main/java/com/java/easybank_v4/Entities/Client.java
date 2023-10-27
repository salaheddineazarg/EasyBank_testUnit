package com.java.easybank_v4.Entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Entity
@Data
@Inheritance
public class Client extends Persone {
 @Id
 @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int code;
  @NotNull
  private String address;

}
