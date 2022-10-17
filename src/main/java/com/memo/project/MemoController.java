package com.memo.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemoController {

	@RequestMapping("/sign_in_view")
	public String signInView() {
		return "memo/signIn";
	}
	
	@RequestMapping("/sign_up_view")
	public String signUpView() {
		return "memo/signUp";
	}
}
