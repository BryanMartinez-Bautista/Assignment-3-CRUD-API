package com.CSC340.Assignment3.posts;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/characters")
public class BatmanCharacterController {

    private final BatmanCharacterService characterService;

    public BatmanCharacterController(BatmanCharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping("/hello")
    public String hello() {
        return "Hello from BatmanCharacterService!";
    }

    @GetMapping
    public ResponseEntity<List<BatmanCharacter>> getAllCharacters() {
        List<BatmanCharacter> characters = characterService.getAllCharacters();
        return ResponseEntity.ok(characters);
    }

    @GetMapping("/{id}")
    public ResponseEntity<BatmanCharacter> getCharacterById(@PathVariable long id) {
        BatmanCharacter character = characterService.getCharacterById(id);

        if (character != null) {
            return ResponseEntity.ok(character);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping
    public ResponseEntity<BatmanCharacter> createCharacter(@RequestBody BatmanCharacter character) {
        BatmanCharacter createdCharacter = characterService.createCharacter(character);
        return ResponseEntity.ok(createdCharacter);
    }

    @PutMapping("/{id}")
    public ResponseEntity<BatmanCharacter> updateCharacter(@PathVariable long id,
        @RequestBody BatmanCharacter updatedCharacter) {
        BatmanCharacter character = characterService.updateCharacter(id, updatedCharacter);

        if (character != null) {
            return ResponseEntity.ok(character);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCharacter(@PathVariable long id) {
        boolean deleted = characterService.deleteCharacter(id);

        if (deleted) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @GetMapping("/role")
    public ResponseEntity<List<BatmanCharacter>> getCharactersByRole(@RequestParam String role) {
        List<BatmanCharacter> characters = characterService.getCharactersByRole(role);
        return ResponseEntity.ok(characters);
    }

    @GetMapping("/search")
    public ResponseEntity<List<BatmanCharacter>> searchCharacters(@RequestParam String query) {
        List<BatmanCharacter> characters = characterService.searchCharacters(query);
        return ResponseEntity.ok(characters);
    }
}
