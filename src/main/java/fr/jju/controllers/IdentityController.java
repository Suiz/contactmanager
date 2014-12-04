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

@Controller
public class IdentityController {

	@Autowired
	IdentityServiceInterface identityserviceinterface;
	
	@RequestMapping("contactsForm")
	public ModelAndView getForm(@ModelAttribute Identity identity) {
		return new ModelAndView("contactsForm");
	}
	
	@RequestMapping("insert")
	public ModelAndView addContact(@ModelAttribute Identity identity) {
		identityserviceinterface.insertRow(identity);
		return new ModelAndView("redirect:contacts");
	}
	
	@RequestMapping("contacts")
	public ModelAndView getContacts(@ModelAttribute Identity identity) {
		List<Identity> identityList = identityserviceinterface.getList();
		return new ModelAndView("contacts", "identityList", identityList);
	}
	
	@RequestMapping("delete")
	public ModelAndView deleteIdentity(@RequestParam int id) {
		identityserviceinterface.deleteIdentity(id);
		return new ModelAndView("redirect:contacts");
	}
	
	@RequestMapping("edit")
	public ModelAndView editIdentity(@RequestParam int id, @ModelAttribute Identity identity) {
		Identity identityEdit = identityserviceinterface.getRowById(id);
		return new ModelAndView("edit", "identityEdit", identityEdit);
	}
	
	@RequestMapping("update")
	public ModelAndView updateIdenity(@ModelAttribute Identity identity) {
		identityserviceinterface.updateRow(identity);
		return new ModelAndView("redirect:contacts");
	}
	
}
