package com.CSC340.Assignment3.posts;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

//Rest Controller
@Controller
@RequestMapping("/batmanCharacters")
public class BatmanCharacterUiController {

    private final BatmanCharacterService batmanCharacterService;

    public BatmanCharacterUiController(BatmanCharacterService batmanCharacterService){
        this.batmanCharacterService = batmanCharacterService;
    }

    @GetMapping()
    public String getAllCharacters(Model model) {
        model.addAttribute("charactersList", batmanCharacterService.getAllCharacters());
        model.addAttribute("pageTitle", "All Characters");
        return "character-list";
    }

    @GetMapping("/updateForm/{id}")
    public Object showUpdateForm(@PathVariable Long id, Model model) {
        BatmanCharacter batmanCharacter= batmanCharacterService.getCharacterById(id);
        model.addAttribute("batmanCharacter", batmanCharacter);
        model.addAttribute("title", "Update Character: " + id);
        return "character-update";
    }

    @GetMapping("/{id}")
    public String getCharacterById(@PathVariable Long id, Model model) {
        BatmanCharacter batmanCharacter = batmanCharacterService.getCharacterById(id);
        model.addAttribute("batmanCharacter", batmanCharacter);
        model.addAttribute("pageTitle", "BatmanCharacter # " + id + " Details");
        return "character-details";
    }

    @GetMapping("/new")
    public String createCharacterForm(Model model) {
        model.addAttribute("batmanCharacter", new BatmanCharacter());
        model.addAttribute("pageTitle", "Create New Character");
        return "character-create";
    }

    @PostMapping("/save")
    public String createCharacter(BatmanCharacter batmanCharacter, MultipartFile thumbnailFile) {
        BatmanCharacter createdCharacter = batmanCharacterService.createCharacter(batmanCharacter);
        if (createdCharacter != null) {
        if (thumbnailFile != null && !thumbnailFile.isEmpty()) {
            batmanCharacterService.saveThumbnail(createdCharacter, thumbnailFile);
        }
        return "redirect:/batmanCharacters/" + createdCharacter.getCharacterId();
        }
        return "redirect:/batmanCharacters/new?error=true";
    }

    @GetMapping("/delete/{id}")
    public String deleteCharacter(@PathVariable Long id) {
        boolean isDeleted = batmanCharacterService.deleteCharacter(id);
        if (isDeleted) {
        return "redirect:/batmanCharacters";
        }
        return "redirect:/batmanCharacters/" + id + "?error=true";
    }

    @PostMapping("/update/{id}")
    public String updateCharacter(@PathVariable Long id, BatmanCharacter updatedCharacter, MultipartFile thumbnailFile) {
        BatmanCharacter batmanCharacter = batmanCharacterService.updateCharacter(id, updatedCharacter);
        if (batmanCharacter != null) {
        if (thumbnailFile != null && !thumbnailFile.isEmpty()) {
            batmanCharacterService.saveThumbnail(batmanCharacter, thumbnailFile);
        }
        return "redirect:/batmanCharacters/" + batmanCharacter.getCharacterId();
        }
        return "redirect:/batmanCharacters/" + id + "?error=true";
    }

    @GetMapping("/search")
    public String searchCharacters(String query, Model model) {
        model.addAttribute("charactersList", batmanCharacterService.searchCharacters(query));
        model.addAttribute("pageTitle", "Search Results for: " + query);
        return "character-list";
    }

    @GetMapping("/about")
        public String about(){
        return "about";
    }
}
