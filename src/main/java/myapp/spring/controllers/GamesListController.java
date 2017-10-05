package myapp.spring.controllers;



import myapp.spring.dao.GameDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GamesListController{
	
	@Autowired
	GameDao dao;

	@RequestMapping(value="/gameList.html", method = RequestMethod.GET)
	protected String handleRequestInternal(ModelMap model) throws Exception {
		
		model.addAttribute("games", dao.getAllGames());
		return "gameList";
	}
	
	@RequestMapping(value="/gameList.html", method = RequestMethod.GET, params={"did"})
	public String deleteGame(@RequestParam("did") Long id){
		System.out.println("Usuwanie");
		dao.deleteGame(dao.getGame(id));

		return "redirect:gameList.html";
	}
	
	@RequestMapping(value="/gameList.html", method = RequestMethod.GET, params={"id"})
	public String showGameDetails(Model model, @RequestParam("id") Long id){
		System.out.println("Pokayzwanie szczegu³ów");
		model.addAttribute("game", dao.getGame(id));
		return "gameDetails";
	}	
	
	
}
