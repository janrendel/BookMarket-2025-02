package com.springboot.bookmarket.service;

import ch.qos.logback.core.model.Model;
import com.springboot.bookmarket.domain.Order;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface OrderService {
    void confirmOrder(String bookId,long orderId);
    Long saveOrder(Order order);

    @GetMapping("/list")
    public String viewHomepage(Model model) {
        return viewPage(1,"orderid", "asc",model);
    }
    @GetMapping("/page")
    public String viewpage(@RequestParam("pageNum") int page Num int pageNum, @RequestParam("sortField") String sortField, @RequestParam(sort)) {
        return viewPage(1,"orderid", "asc",model);
    }
}
