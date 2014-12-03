package fr.jju.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import fr.jju.classes.Identity;
import services.IdentityServiceInterface;

public class IdentityDAO implements IdentityServiceInterface {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(Identity identity) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(identity);
		tx.commit();
		Serializable id = session.getIdentifier(identity);
		session.close();
		return (Integer)id;
	}

	@Override
	public List<Identity> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Identity> identityList = session.createQuery("from Identity").list();
		session.close();
		return identityList;
	}

	@Override
	public int deleteIdentity(int id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Identity identity = (Identity)session.load(Identity.class, id);
		session.delete(identity);
		tx.commit();
		Serializable ids = session.getIdentifier(identity);
		session.close();
		return (Integer)ids;
	}

	@Override
	public Identity getRowById(int id) {
		Session session = sessionFactory.openSession();
		Identity identity = (Identity)session.load(Identity.class, id);
		return identity;
	}

	@Override
	public int updateRow(Identity identity) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(identity);
		tx.commit();
		Serializable id = session.getIdentifier(identity);
		session.close();
		return (Integer)id;
	}
	
}
