package org.example.demo1.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.example.demo1.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.example.demo1.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@RestController
@RequestMapping("/api/users")
public class UserController {
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @PostMapping("/signup")
    public ResponseEntity<String> signup(@RequestBody User user) {
        userService.addUser(user);
        logger.info("User signed up: {}", user.getUname());
        return ResponseEntity.status(HttpStatus.CREATED).body("User registered successfully!");
    }

    @PostMapping("/login")
    public ResponseEntity<String> login(@RequestBody User loginRequest, HttpServletRequest request) {
        User user = userService.getUserByUnameAndPassword(loginRequest.getUname(), loginRequest.getPassword());
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("currentUser", user);
            logger.info("User logged in: {}", user.getUname());
            return ResponseEntity.ok("Login successful!");
        } else {
            logger.warn("Invalid login attempt: {}", loginRequest.getUname());
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid credentials!");
        }
    }

    @GetMapping("/me")
    public ResponseEntity<User> getCurrentUser(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            User currentUser = (User) session.getAttribute("currentUser");
            if (currentUser != null) {
                logger.info("Current user: {}", currentUser.getUname());
                return ResponseEntity.ok(currentUser);
            } else {
                logger.warn("No user found in session.");
            }
        } else {
            logger.warn("No session found.");
        }
        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
    }


    @PostMapping("/update")
    public ResponseEntity<String> updateUser(@RequestBody User updatedUser, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            User currentUser = (User) session.getAttribute("currentUser");
            if (currentUser != null) {
                currentUser.setUname(updatedUser.getUname());
                currentUser.setEmail(updatedUser.getEmail());
                currentUser.setPhone(updatedUser.getPhone());
                currentUser.setAddress(updatedUser.getAddress());

                userService.addUser(currentUser);  // Save the updated user details

                session.setAttribute("currentUser", currentUser);  // Update session
                logger.info("User updated: {}", currentUser.getUname());
                return ResponseEntity.ok("Profile updated successfully!");
            } else {
                logger.warn("No user found in session2.");
                return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("No user logged in.");
            }
        } else {
            logger.warn("No session found2.");
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("No session found.");
        }
    }
}