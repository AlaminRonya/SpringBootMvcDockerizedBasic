package com.example.springbootdockerizedexample.dto.request;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class RegistrationDto {
    private String firstName;
    private String lastName;
    private String email;
    private String password;
}
