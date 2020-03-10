package com.bway.springproject.dao;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bway.springproject.model.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Resource
	private SessionFactory SessionFactory;

	@Override
	@Transactional
	public void userSignUP(User u) {

		Session ses = SessionFactory.getCurrentSession();
		ses.save(u);

	}

	@Override
	@Transactional
	public boolean userLogin(String un, String psw) {

		Session ses = SessionFactory.getCurrentSession();
		Criteria crt = ses.createCriteria(User.class);
		crt.add(Restrictions.eq("username", un)).add(Restrictions.eq("password", psw));
		User u = (User) crt.uniqueResult();

		if (u != null)
			return true;

		return false;
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public boolean isUserValid(String username) {
		Session ses = SessionFactory.getCurrentSession();
		Criteria crt = ses.createCriteria(User.class);
		crt.add(Restrictions.eq("username", username));
		List<User> un = crt.list();

		if (un == null) {
			
			return true;
			
		}
			
		return false;
	}


}
