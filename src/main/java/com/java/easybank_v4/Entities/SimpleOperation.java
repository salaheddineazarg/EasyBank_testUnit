package com.java.easybank_v4.Entities;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class SimpleOperation extends Operation{

    private Type type;
}
