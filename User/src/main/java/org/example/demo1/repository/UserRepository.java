package org.example.demo1.repository;

import org.example.demo1.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Long> {
    User findByEmail(String email);
    User findByUnameAndPassword(String uname, String password);

    User findByUname(String uname);
}
