package com.ezenproject.myzipchelin.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {
    @GetMapping("/notice")
    public String Notice() {
        return "content/notice";
    }
}
