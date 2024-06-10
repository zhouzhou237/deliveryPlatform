package org.example.demo1.service;

import org.example.demo1.model.Review;
import org.example.demo1.repository.ReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewService {
    @Autowired
    private ReviewRepository reviewRepository;

    public List<Review> getAllReviews() {
        return reviewRepository.findAll();
    }

    public List<Review> getReviewsByRestaurantId(Long restaurantId) {
        return reviewRepository.findByRestaurantId(restaurantId);
    }
    public Review getReviewById(Long id) {
        return reviewRepository.findById(id).orElse(null);
    }
    public Review saveReview(Review review) {
        return reviewRepository.save(review);
    }
}
