package fr.jju.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@RequestMapping("login")
	public ModelAndView displayLogin (@RequestParam(required=false) String loginfail, String logout) {
		
		String message = "";
		if (loginfail!=null) {
			message = "Username or password are incorrect.";
		}
		else if (logout!=null) {
			message = "Succesfully logged out";
		}
		return new ModelAndView("login", "message", message);
	}
	
}
