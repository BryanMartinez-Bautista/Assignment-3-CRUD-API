package com.CSC340.Assignment3.posts;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BatmanCharacterRepository extends JpaRepository<BatmanCharacter, Long> {

    List<BatmanCharacter> findByRoleContainingIgnoreCase(String role);

    List<BatmanCharacter> findByNameContainingIgnoreCase(String name);

}
