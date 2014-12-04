package fr.jju.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fr.jju.classes.Users;
import services.UserServiceInterface;

public class UserDAO implements UserServiceInterface {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public Users getRowById(int id) {
		Session session = sessionFactory.openSession();
		Users user = (Users)session.load(Users.class, id);
		return user;
	}
	
}
