package org.example.demo1.controller;

import org.example.demo1.model.Order;
import org.example.demo1.repository.OrderItemRepository;
import org.example.demo1.repository.RestaurantRepository;
import org.example.demo1.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/orders")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private OrderItemRepository orderItemRepository;

    @Autowired
    private RestaurantRepository restaurantRepository;

    @GetMapping("/user/{userId}")
    public ResponseEntity<List<Map<String, Object>>> getOrdersByUserId(@PathVariable Long userId) {
        try {
            List<Order> orders = orderService.getOrdersByUserId(userId);

            // 添加日志
            System.out.println("Orders fetched from database: " + orders);

            List<Map<String, Object>> response = orders.stream().map(order -> {
                Map<String, Object> orderData = new HashMap<>();
                orderData.put("order", order);
                orderData.put("restaurant", restaurantRepository.findById(order.getRestaurant().getId()).orElse(null));
                orderData.put("orderItems", orderItemRepository.findByOrderId(order.getId()));
                return orderData;
            }).collect(Collectors.toList());
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PostMapping
    public ResponseEntity<Order> createOrder(@RequestBody Order order) {
        try {
            Order savedOrder = orderService.saveOrder(order);
            return new ResponseEntity<>(savedOrder, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }
}
