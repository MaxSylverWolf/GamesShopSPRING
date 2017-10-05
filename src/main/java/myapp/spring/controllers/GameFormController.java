package myapp.spring.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;








import myapp.spring.controllers.commands.LogonCommand;
import myapp.spring.dao.GameDao;
import myapp.spring.domain.Accessory;
import myapp.spring.domain.AccessoryWebEditor;
import myapp.spring.domain.Game;
import myapp.spring.domain.GameType;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;	
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller

@SessionAttributes(value={"gameTypes, accessories"})
public class GameFormController {

	
	protected final Log log = LogFactory.getLog(getClass());
	
	@Autowired
	GameDao dao;
	
	@Autowired
	LocalValidatorFactoryBean validator;
	
	
	@RequestMapping(value="/gameForm.html", method=RequestMethod.GET)
	public String showForm(Model model, @RequestParam(value="gid", defaultValue="-1") Long id, HttpSession session){

		String str = "To jest wiadomoœæ";
		myapp.spring.domain.Game v = (id>0)?dao.getGame(id):new Game();
		
		model.addAttribute("game", v);
		model.addAttribute("str", str);
		return "gameForm";
	}
	
	@RequestMapping(value="/gameForm.html", method=RequestMethod.POST)
	public String processForm(Model model, @ModelAttribute("game") Game v, BindingResult result){
	
		validator.validate(v, result);
		
		if(v.getName()!=null && v.getName().equals("admin"))
			result.rejectValue("name", "wrongName.game.name");
		
		if(result.hasErrors()){

			return "gameForm";
		}
		
		
		List<FieldError> errors =result.getFieldErrors();
		for (FieldError objectError : errors) {
			System.out.println(objectError.getRejectedValue());
		}
		
		dao.saveOrUpdateGame(v);
		
		return "successGameForm";
	}	
	
	
	@ModelAttribute("gameTypes")
	public List<GameType> loadTypes(){
		List<GameType> types = dao.getGameTypes();
		log.info("£adowanie listy "+types.size()+" typów ");
		return types;
	}
	@ModelAttribute("accessories")
	public List<Accessory> loadAcc(){
		List<Accessory> types = dao.getAccessories();
		return types;
	}

	@InitBinder
    public void initBinder1(WebDataBinder binder) {
    	binder.registerCustomEditor(Accessory.class, new AccessoryWebEditor());
    }

	
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }	

}








