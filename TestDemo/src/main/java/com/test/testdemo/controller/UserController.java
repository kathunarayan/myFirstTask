package com.test.testdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.testdemo.dao.UserDAO;
import com.test.testdemo.model.User;

@Controller
public class UserController {

	@Autowired(required = true)
	private UserDAO userDAO;
	
	@RequestMapping("/")
	public String homePage(){
		return "home";
	}
	@RequestMapping("newUser")
	public String newUser(@ModelAttribute User user){
		userDAO.saveOrUpdate(user);
		return "user";
		
	}
	@RequestMapping("logIn")
	public String logIn(@ModelAttribute User user, Model model){
		if(user.getUserName().equals("muthu") && user.getPassword().equals("muthu")){
			return "redirect:/ViewUser";
		}
		else if(userDAO.logIn(user)){
			model.addAttribute("message", "You Are Successfully logged In");
			User user1= userDAO.getById(user.getUserName());
			model.addAttribute("userDetails", user1);
			return "user";
		}else{
			model.addAttribute("message", "Invalid username or Password");
			return "home";
		}
	}
		@RequestMapping("/ViewUser")
		public String viewUser(Model model) {
			List<User> userList = userDAO.list();
			model.addAttribute("userList", userList);
			model.addAttribute("isAdminClickedViewUser", true);
			return "Admin";

	}
		@RequestMapping("editUser")
		public String editUser(@RequestParam(value = "userName") String userName, Model model){
			
			User user = userDAO.getById(userName);
			model.addAttribute("user", user);
			
			return "editUser";
			
		}
		@RequestMapping("afterEditUser")
		public String afterEdit(@ModelAttribute User user,Model model){
			userDAO.saveOrUpdate(user);
			model.addAttribute("userDetails", user);
			return "user";
			
		}
		@RequestMapping("logout")
		public String logout(Model model){
			model.addAttribute("message", "Successfully logged Out");
			return "home";
			
		}
	
}
