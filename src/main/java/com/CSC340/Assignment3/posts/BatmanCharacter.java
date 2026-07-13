package com.CSC340.Assignment3.posts;

import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "characters")
@Data
@NoArgsConstructor
@AllArgsConstructor

public class BatmanCharacter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long characterId ;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false, columnDefinition = "TEXT")
    private String description;

    @Column(nullable = false)
    private String role;

    @Column(nullable = false)
    private String abilities;

    @Column(nullable = false)
    private String imageUrl;

    private String firstAppearance;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm")
    private LocalDateTime createdAt;

    private String thumbnailUrl;

    public BatmanCharacter(String name, String role, String abilities,
         String imageUrl, String description, String firstAppearance, String thumbnailUrl) {
        this.name = name;
        this.role = role;
        this.abilities  = abilities;
        this.imageUrl = imageUrl;
        this.description = description;
        this.firstAppearance = firstAppearance;
        this.thumbnailUrl = thumbnailUrl;
    }

    @PrePersist
    @PreUpdate
    protected void onUpdate() {
        this.createdAt = LocalDateTime.now();
    }
}
