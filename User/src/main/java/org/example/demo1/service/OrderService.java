package org.example.demo1.service;

import org.example.demo1.model.Order;
import org.example.demo1.model.OrderItem;
import org.example.demo1.model.User;
import org.example.demo1.model.Restaurant;
import org.example.demo1.repository.OrderItemRepository;
import org.example.demo1.repository.OrderRepository;
import org.example.demo1.repository.RestaurantRepository;
import org.example.demo1.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private OrderItemRepository orderItemRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RestaurantRepository restaurantRepository;

    public List<Order> getOrdersByUserId(Long userId) {
        return orderRepository.findByUserId(userId);
    }

    public Order saveOrder(Order order) {
        if (order.getOrderItems() == null) {
            order.setOrderItems(new ArrayList<>());
        }

        // 查找用户和餐馆信息
        User user = userRepository.findById(order.getUser().getId())
                .orElseThrow(() -> new RuntimeException("User not found"));
        Restaurant restaurant = restaurantRepository.findById(order.getRestaurant().getId())
                .orElseThrow(() -> new RuntimeException("Restaurant not found"));

        // 设置用户和餐馆信息
        order.setUser(user);
        order.setRestaurant(restaurant);

        // 保存订单
        Order savedOrder = orderRepository.save(order);

        // 保存每个订单项
        for (OrderItem item : order.getOrderItems()) {
            item.setOrder(savedOrder);
            orderItemRepository.save(item);
        }

        return savedOrder;
    }
}

