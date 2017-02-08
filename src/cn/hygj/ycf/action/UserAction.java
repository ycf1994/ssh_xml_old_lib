package cn.hygj.ycf.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import cn.hygj.ycf.dao.DAO;
import cn.hygj.ycf.entity.User;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	private final String SHOW = "show";
	private List<User> userList;

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	private DAO ui;

	public DAO getUi() {
		return ui;
	}

	public void setUi(DAO ui) {
		this.ui = ui;
	}

	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String login() {
		ui.add(user);
		return SUCCESS;
	}

	public String find() {
		userList = ui.find();
		return SHOW;
	}

	public String del() {
		ui.del(user);
		return SUCCESS;
	}

	public String update() {
		System.out.println(user.getId());
		ui.update(user);
		return SUCCESS;
	}

	

}
