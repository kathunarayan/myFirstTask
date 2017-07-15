package com.test.testdemo.daoimp;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.test.testdemo.dao.UserDAO;
import com.test.testdemo.model.User;

@Repository("UserDAO")
public class UserDAOImp implements UserDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public UserDAOImp(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	

	@Transactional
	public void saveOrUpdate(User user) {
	
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public List<User> list() {
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) sessionFactory.getCurrentSession().createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listUser;
	}

	@Transactional
	public User getById(String userName) {
		String hql = "from User where userName ='" + userName + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> listCategory = (List<User>) (query).list();

		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		return null;
	}



	@Transactional
	public boolean logIn(User user) {
		String hql = "from User where userName= '" + user.getUserName() + "' and " + " password ='" + user.getPassword()+"'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}

}
