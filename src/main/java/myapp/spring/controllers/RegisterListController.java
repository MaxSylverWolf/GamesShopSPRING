package myapp.spring.controllers;



import myapp.spring.dao.GameDao;
import myapp.spring.dao.RegisterDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RegisterListController{
	
	@Autowired
	RegisterDao dao2;

	@RequestMapping(value="/registerList.html", method = RequestMethod.GET)
	protected String handleRequestInternal(ModelMap model) throws Exception {
		
		model.addAttribute("registers", dao2.getAllRegisters());
		return "registerList";
	}
	
	
	@RequestMapping(value="/registerList.html", method = RequestMethod.GET, params={"id"})
	public String showGameDetails(Model model, @RequestParam("id") Long id){
		System.out.println("Pokayzwanie szczegu³ów");
		model.addAttribute("register", dao2.getRegister(id));
		return "registerDetails";
	}	
	
	
}
