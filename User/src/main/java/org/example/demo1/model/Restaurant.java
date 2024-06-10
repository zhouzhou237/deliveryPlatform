package org.example.demo1.model;

import jakarta.persistence.*;

import java.util.Set;

    @Entity
    @Table(name = "restaurant")
    public class Restaurant {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;
        private String name;
        private String address;
        private int reviews;
        private String delivery;
        private String openTime;
        private int rating;

    // Constructors, getters, and setters
    public Restaurant(Long id, String name, String address, int reviews, String delivery, String openTime, int rating) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.reviews = reviews;
        this.delivery = delivery;
        this.openTime = openTime;
        this.rating = rating;
    }

    public Restaurant() {}

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }

    public int getReviews() { return reviews; }
    public void setReviews(int reviews) { this.reviews = reviews; }

    public String getDelivery() { return delivery; }
    public void setDelivery(String delivery) { this.delivery = delivery; }

    public String getOpenTime() { return openTime; }
    public void setOpenTime(String openTime) { this.openTime = openTime; }

    public int getRating() { return rating; }
    public void setRating(int rating) { this.rating = rating; }

}