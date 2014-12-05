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
			message = "<div class='alert alert-danger' role='alert'><strong>Oops! </strong>Username or Password are incorrect</div>";
		}
		else if (logout!=null) {
			message = "<div class='alert alert-success' role='alert'><strong>Goodbye! </strong>Logout succesful.</div>";
		}
		return new ModelAndView("login", "message", message);
	}
	
}
