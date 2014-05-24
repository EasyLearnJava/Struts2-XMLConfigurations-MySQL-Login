package com.easylearnjava.action;

import com.easylearnjava.service.LoginService;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	/**
	 * This is auto generated
	 */
	private static final long serialVersionUID = -8394168031846902591L;

	private String username;
	private String password;

	// Default method called in struts2
	public String execute() {
		
		Boolean validData = true;
		try{			
			if (username == null || ("".equals(username))) {
				addActionError(getText("error.name.required"));
				validData = false;
			}

			if (password == null || ("".equals(password))) {
				addActionError(getText("error.password.required"));
				validData = false;
			}
			
			if(!validData){
				return "failure";
			}
			
			LoginService ls = new LoginService();
			boolean isValid = ls.isValidPassword(this.username, this.password);

			if (isValid) {				
				return "success";
			} else {				
				addActionError(getText("login.failed"));
				return "failure";
			}
		}catch(Exception e){
			addActionError(getText("global.exception.message"));
			return "failure";
		}
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
