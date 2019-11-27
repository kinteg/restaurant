package com.example.restaurant.domain;

import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Data
@Entity
public class Message {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @NotBlank(message = "Please fill the message")
    @Length(max = 2048, message = "Message to long")
    private String text;
    @Length(max = 20, message = "Tag to long")
    private String tag;

    @ManyToOne(fetch = FetchType.EAGER) //одному пользователю соответствует множество сообщений
    @JoinColumn(name = "user_id")
    private User author;

    private String filename;

    public Message() {}

    public Message(String text, String tag, User author) {
        this.author = author;
        this.text = text;
        this.tag = tag;
    }

    public String getAuthorName() {
        return author != null ? author.getUsername() : "<none>";
    }

}
