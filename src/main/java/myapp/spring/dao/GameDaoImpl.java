package myapp.spring.dao;

import java.util.List;

import myapp.spring.domain.Accessory;
import myapp.spring.domain.Game;
import myapp.spring.domain.GameType;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;

public class GameDaoImpl implements GameDao{
	
	protected final Logger log = LoggerFactory.getLogger(getClass());

	protected SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}	
	

	
	@Override
	public List<GameType> getGameTypes() {
		try(Session session = sessionFactory.openSession()){
			Query<GameType> query = session.createQuery("FROM "+GameType.class.getName());
			return query.getResultList();		
		}
	}
	@Override
	public List<Accessory> getAccessories() {
		try(Session session = sessionFactory.openSession()){
			Query<Accessory> query = session.createQuery("FROM "+Accessory.class.getName());
			return query.getResultList();		
		}
	}
	@Override
	public Game getGame(long id) {
		try(Session session = sessionFactory.openSession()){
			return (Game)session.get(Game.class.getName(), id);
		}
	}
	
	@Override
	public List<Game> getAllGames() {
		try(Session session = sessionFactory.openSession()){
			Query<Game> query = session.createQuery("FROM "+Game.class.getName());
			return query.getResultList();				
		}
	}

	public void saveOrUpdateGame(Game v){
		try(Session session = sessionFactory.openSession()){
			session.beginTransaction();
			session.saveOrUpdate(v);
			session.getTransaction().commit();
			
		}
	}

	@Override
	public void deleteGame(Game v) {
		try(Session session = sessionFactory.openSession()){
			session.beginTransaction();
			session.delete(v);
			session.getTransaction().commit();
		}
	}
	

	
	@Override
	public boolean checkUser(String login, String password) {
		
		
		if(login.equalsIgnoreCase("SYLVERWOLF") && password.equalsIgnoreCase("ARCANINE"))
			return true;
		return false;
	}
	
	

			
	}
	
	
	


