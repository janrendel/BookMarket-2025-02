package com.springboot.bookmarket.repository;

import com.springboot.bookmarket.domain.Order;

public interface OrderRepository {
//  주문목록 저장
    Long saveOrder(Order order);
}
