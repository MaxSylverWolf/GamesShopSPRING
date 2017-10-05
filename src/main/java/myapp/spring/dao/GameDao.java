package myapp.spring.dao;

import java.util.List;

import myapp.spring.domain.Accessory;
import myapp.spring.domain.Game;
import myapp.spring.domain.GameType;

public interface GameDao {

	Game getGame(long id);
	
	public void saveOrUpdateGame(Game v);
	
	public void deleteGame(Game v);
	
	List<Game> getAllGames();
	
	List<GameType> getGameTypes();
	
	boolean checkUser(String login, String password);

	List<Accessory> getAccessories();

}
