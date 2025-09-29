package com.springboot.bookmarket.repository;

import com.springboot.bookmarket.domain.Cart;

public interface CartRepository {
    Cart create(Cart cart);

    Cart read(String cartId);

    void update(String cartId, Cart cart);
    void delete(String cartId);//카트안에 전체 항목들을 삭제
}