package org.example.demo1.controller;

import org.example.demo1.model.Restaurant;
import org.example.demo1.model.Review;
import org.example.demo1.service.RestaurantService;
import org.example.demo1.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/reviews")
@CrossOrigin(origins = "*")
public class ReviewController {

    @Autowired
    private ReviewService reviewService;

    @Autowired
    private RestaurantService restaurantService;

    @GetMapping
    public List<Review> getAllReviews() {
        return reviewService.getAllReviews();
    }

    @GetMapping("/restaurant/{restaurantId}")
    public List<Review> getReviewsByRestaurantId(@PathVariable Long restaurantId) {
        return reviewService.getReviewsByRestaurantId(restaurantId);
    }

    @PostMapping
    public Review saveReview(@RequestBody Review review) {
        // 获取restaurantId
        Long restaurantId = review.getRestaurantId();
        // 查找餐馆对象
        Restaurant restaurant = restaurantService.getRestaurantById(restaurantId);
        if (restaurant != null) {
            review.setRestaurant(restaurant); // 确保评论对象关联到正确的餐馆
            return reviewService.saveReview(review);
        } else {
            throw new RuntimeException("Restaurant not found");
        }
    }
}
