package org.example.demo1.repository;

import org.example.demo1.model.Review;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review,Long> {
    List<Review> findByRestaurantId(Long restaurantId);
}
