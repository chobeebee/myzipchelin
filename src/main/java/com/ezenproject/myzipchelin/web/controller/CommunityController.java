package com.ezenproject.myzipchelin.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/community/*")
public class CommunityController {
    @GetMapping("/list")
    public String Community(){
        return "content/community/community";
    }

    @GetMapping("/post")
    public String CommunityPost(){
        return "content/community/communityPost";
    }

    @GetMapping("/form")
    public String CommunityForm(){
        return "content/community/communityForm";
    }
}
