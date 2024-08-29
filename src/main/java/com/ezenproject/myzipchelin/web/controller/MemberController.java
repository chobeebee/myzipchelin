package com.ezenproject.myzipchelin.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/member/*")
@Controller
public class MemberController {
    @GetMapping("/login")
    public String Login() {
        return "/member/login";
    }

    @GetMapping("/join")
    public String Join() {
        return "/member/join";
    }

    @GetMapping("/find")
    public String Find() {
        return "/member/find";
    }

    @GetMapping("/leave")
    public String Leave() {
        return "/member/leaveCheck";
    }

    @GetMapping("/done")
    public String Done() {
        return "/member/leaveDone";
    }
}
