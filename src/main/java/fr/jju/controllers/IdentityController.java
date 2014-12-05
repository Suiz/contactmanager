package fr.jju.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.jju.classes.Identity;
import services.IdentityServiceInterface;

/**
 * The IdentityController class takes the requests done by contacts.jsp and transforms them into views.
 * The interface is Autowired to the interface which is implemented by the DAO class.
 * 
 * @author Suiz
 *
 */
@Controller
public class IdentityController {

	@Autowired
	IdentityServiceInterface identityserviceinterface;
	
	/**
	 * addContact takes an identity object passed by the jsp
	 * and inserts it into the database using the dataSource bean.
	 * @param identity
	 * @return ModelAndView object which inserts the record and redirects to the contacts view.
	 */
	@RequestMapping("insert")
	public ModelAndView addContact(@ModelAttribute Identity identity) {
		identityserviceinterface.insertRow(identity);
		return new ModelAndView("redirect:contacts");
	}
	
	/**
	 * getContacts Lists all the contacts in the Identity table of the mySQL database
	 * @param identity
	 * @return ModelAndView rendering the contacts view.
	 */
	@RequestMapping("contacts")
	public ModelAndView getContacts(@ModelAttribute Identity identity) {
		List<Identity> identityList = identityserviceinterface.getList();
		return new ModelAndView("contacts", "identityList", identityList);
	}
	
	/**
	 * deleteIdentity takes the id of an object in the database passed by the jsp
	 * and deletes the corresponding record from the database using the dataSource bean.
	 * @param id
	 * @return ModelAndView object which redirects to the contacts view.
	 */
	@RequestMapping("delete")
	public ModelAndView deleteIdentity(@RequestParam int id) {
		identityserviceinterface.deleteIdentity(id);
		return new ModelAndView("redirect:contacts");
	}
	
	/**
	 * updateIdentity takes an identity object passed by the jsp
	 * and updates its correspoding record in the database using the dataSource bean.
	 * @param identity
	 * @return ModelAndView object which updates the record and redirects to the contacts view.
	 */
	@RequestMapping("update")
	public ModelAndView updateIdenity(@ModelAttribute Identity identity) {
		identityserviceinterface.updateRow(identity);
		return new ModelAndView("redirect:contacts");
	}
	
}
