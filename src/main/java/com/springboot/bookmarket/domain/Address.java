package com.springboot.bookmarket.domain;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity

public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String customerId;
    private String name;
    private String phone;
    private String email;
    private String address;

}
