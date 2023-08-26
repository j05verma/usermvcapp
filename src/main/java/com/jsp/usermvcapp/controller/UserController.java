package com.jsp.usermvcapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.usermvcapp.dto.User;
import com.jsp.usermvcapp.service.UserService;

@Controller
@SessionAttributes(names = "u")
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("/logout")
	public String logout(SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		return "login";
	}

	@RequestMapping(value = "/load")
	public ModelAndView load(User user, int choice, ModelAndView view) {
		if (choice == 1)
			view.setViewName("register");
		else if (choice == 2)
			view.setViewName("edit");
		view.addObject("user", new User());
		return view;
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute User user, ModelAndView view) {
		user = userService.saveUser(user);
		view.addObject("message", "User saved with ID:" + user.getId());
		view.setViewName("print");
		return view;
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView updateUser(@ModelAttribute User user, ModelAndView view) {
		user = userService.updateUser(user);
		view.addObject("message", "User updated Succesfully");
		view.setViewName("print");
		return view;
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteU(@PathVariable int id, ModelAndView view) {
		User user = userService.getUser(id);
		userService.deleteUser(user.getId());
		view.addObject("message", "User updated Succesfully");
		view.setViewName("login");
		return view;

	}

	@RequestMapping(value = "/loginuser", method = RequestMethod.POST)
	public String login(@RequestParam long phone, @RequestParam String password, Model model) {
		User u = userService.verifyUser(phone, password);
		System.out.println(u);
		if (u != null) {
			model.addAttribute("u", u);
			return "home";
		} else {
			model.addAttribute("msg", "Invalid Phone Number or Password");
			return "login";
		}
	}
}
