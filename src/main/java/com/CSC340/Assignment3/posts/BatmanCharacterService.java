package com.CSC340.Assignment3.posts;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class BatmanCharacterService {

    private final BatmanCharacterRepository characterRepository;

    public BatmanCharacterService(BatmanCharacterRepository characterRepository) {
        this.characterRepository = characterRepository;
    }

    public List<BatmanCharacter> getAllCharacters() {
        return characterRepository.findAll();
    }

    public BatmanCharacter getCharacterById(long id) {
        return characterRepository.findById(id).orElse(null);
    }

    public BatmanCharacter createCharacter(BatmanCharacter character) {
        return characterRepository.save(character);
    }

    public BatmanCharacter updateCharacter(long id, BatmanCharacter updatedCharacter) {
        BatmanCharacter existingCharacter = characterRepository.findById(id).orElse(null);

        if (existingCharacter != null) {
            existingCharacter.setName(updatedCharacter.getName());
            existingCharacter.setDescription(updatedCharacter.getDescription());
            existingCharacter.setRole(updatedCharacter.getRole());
            existingCharacter.setAbilities(updatedCharacter.getAbilities());
            existingCharacter.setImageUrl(updatedCharacter.getImageUrl());
            existingCharacter.setFirstAppearance(updatedCharacter.getFirstAppearance());

            return characterRepository.save(existingCharacter);
        }

        return null;
    }

    public boolean deleteCharacter(long id) {
        if (characterRepository.existsById(id)) {
            characterRepository.deleteById(id);
            return true;
        }
        return false;
    }

    public List<BatmanCharacter> getCharactersByRole(String role) {
        return characterRepository.findByRoleContainingIgnoreCase(role);
    }

    public List<BatmanCharacter> searchCharacters(String name) {
        return characterRepository.findByNameContainingIgnoreCase(name);
    }

}