package com.ezenproject.myzipchelin.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/search")
@Controller
public class SearchController {
    @GetMapping("")
    public String Search(){
        return "/content/search";
    }
}
