package org.example.demo1.service;

import org.example.demo1.model.User;
import org.example.demo1.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public void addUser(User user) {
        userRepository.save(user);
    }

    public User getUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public User getUserByUnameAndPassword(String uname, String password) {
        return userRepository.findByUnameAndPassword(uname, password);
    }

    public Long getUserIdByUname(String uname) {
        User user = userRepository.findByUname(uname);
        return user != null ? user.getId() : null;
    }



}
