package com.springboot.bookmarket.domain;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
public class Customer extends Shipping {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String customerId;
    private String name;
    private String phone;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "address_id")
    private Address address;
}
