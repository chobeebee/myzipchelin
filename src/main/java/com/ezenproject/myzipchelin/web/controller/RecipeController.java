package com.ezenproject.myzipchelin.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/recipe/*")
@Controller
public class RecipeController {
    @GetMapping("/list")
    public String Recipe(){
        return "content/recipe/recipe";
    }

    @GetMapping("/detail")
    public String RecipeDetail(){
        return "content/recipe/recipeDetail";
    }
}
