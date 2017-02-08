package cn.hygj.ycf.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.hygj.ycf.dao.DAO;

public class UserImpl extends HibernateDaoSupport implements DAO {

	public boolean add(Object obj) {
		this.getHibernateTemplate().save(obj);
		return false;
	}

	public List find() {
		return this.getHibernateTemplate().find("from User");
	}

	public boolean del(Object obj) {
		this.getHibernateTemplate().delete(obj);
		return false;
	}

	public boolean update(Object obj) {
		(this.getHibernateTemplate()).update(obj);
		return false;
	}
}
