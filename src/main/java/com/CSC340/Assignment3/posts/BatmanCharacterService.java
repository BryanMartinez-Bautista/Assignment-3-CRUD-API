package com.CSC340.Assignment3.posts;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class BatmanCharacterService {

    private final BatmanCharacterRepository characterRepository;

    private static final String UPLOAD_DIR = "src/main/resources/static/images/";

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

    @SuppressWarnings({"UseSpecificCatch", "CallToPrintStackTrace"})
    public void saveThumbnail(BatmanCharacter batmanCharacter, MultipartFile thumbnailFile) {
        String originalFileName = thumbnailFile.getOriginalFilename();
        try {
            String fileExtension = originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
            String fileName = "batmanCharacter_" + batmanCharacter.getCharacterId() + "." + fileExtension;
            Path filePath = Paths.get(UPLOAD_DIR + fileName);
            InputStream inputStream = thumbnailFile.getInputStream();

            Files.createDirectories(Paths.get(UPLOAD_DIR));
            Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);

            batmanCharacter.setThumbnailUrl(fileName);
            characterRepository.save(batmanCharacter);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}