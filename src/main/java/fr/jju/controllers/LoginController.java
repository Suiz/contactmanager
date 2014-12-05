package fr.jju.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


/**
 * The LoginController class takes the requests done by login.jsp
 * and transforms them into the login view and logic.
 * It takes whatever additional parameters are in the URL
 * from bad logins to successful logouts
 * and renders a short message
 * 
 * @author Suiz
 *
 */
@Controller
public class LoginController {
	
	/**
	 * displayLogin takes it's request through the security bean.
	 * If it fails it redirects to the same login view with additional 
	 * parameters in the URL to explain the failure
	 * @param loginfail URL parameter that allows the view to display and error message
	 * @param logout URL parameter that allows the view to display a successful logout message
	 * @return ModelAndView view of the login page along with a message if required.
	 */
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
