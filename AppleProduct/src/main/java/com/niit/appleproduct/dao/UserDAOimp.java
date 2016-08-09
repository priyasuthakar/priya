package com.niit.appleproduct.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.appleproduct.models.User;

@Repository("userDAO")
public class UserDAOimp implements UserDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public UserDAOimp(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void saveOrUpdate(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}

	@Transactional
	public void delete(User user) {
		sessionFactory.getCurrentSession().delete(user);
	}

	@Transactional
	public User get(int id) {
		String hql = "from user where id=" + "'" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<User> listUser = query.list();

		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}
		return null;
	}

	@Transactional
	public List<User> list() {

		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) sessionFactory.getCurrentSession().createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listUser;

	}

	public boolean isValidUser(String username, String password) {
		String hql = "from User where username = '" + username + "' and password =" + password + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List list = query.list();
		if (list == null || list.isEmpty()) {
			return false;
		} else {
			return true;
		}

	}
}
