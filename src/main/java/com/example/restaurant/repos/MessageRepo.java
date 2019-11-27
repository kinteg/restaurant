package com.example.restaurant.repos;

import com.example.restaurant.domain.Message;
import com.example.restaurant.domain.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

//работеает с бд
public interface MessageRepo extends CrudRepository<Message, Long> {

    List<Message> findByTag(String tag);

    Page<Message> findByTag(String tag, Pageable pageable);

    Page<Message> findAll(Pageable pageable);


    Page<Message> findByAuthor(User user, Pageable pageable);
}
