package com.bway.springproject.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bway.springproject.dao.EmployeeDao;
import com.bway.springproject.dao.UserDao;
import com.bway.springproject.model.User;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private UserDao udao;

	@Autowired
	private EmployeeDao edao;

	@RequestMapping(value = "/userlogin", method = RequestMethod.GET)
	public String getLoginForm() {

		logger.info("inside getLoginForm()");

		return "login";
	}

	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String loginUser(@ModelAttribute User u, Model model, HttpSession session, HttpServletRequest req)
			throws IOException {

		u.setPassword(DigestUtils.md5DigestAsHex(u.getPassword().getBytes()));
		String input = req.getParameter("g-recaptcha-response");
		boolean result = VerifyRecaptcha.verify(input);

		if (result) {

			if (udao.userLogin(u.getUsername(), u.getPassword())) {

				logger.info("login success!!");
				session.setAttribute("activeuser", u.getUsername());
				session.setMaxInactiveInterval(300);

				model.addAttribute("user", u.getUsername());
				model.addAttribute("elist", edao.getAllEmployee());

				return "home";

			}else{
				
				model.addAttribute("error", "Invalid Username or Password");

				return "login";
			}
		}

		logger.info("login failed");
		model.addAttribute("error", "You are not Human!!!");

		return "login";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String userLogout(HttpSession session) {

		logger.info("logout success");
		session.invalidate();

		return "login";
	}
	

	@RequestMapping(value = "/facebook", method = RequestMethod.GET)
	public String fbLogin(){
		
		//String secret_key = "c85c3bbaeded9ce1ea6af891cc8733c2";
		//String app_id = "1439123129660532";
		
		return "redirect:https://www.facebook.com/dialog/oauth?client_id=2152876548122692&redirect_uri=http://localhost:8080/springproject/authorize/facebook&response_type=code&scope=email";
	}
	
	
	
	@RequestMapping(value = "/authorize/facebook", method = RequestMethod.GET)
	public String saveFbUser(String code, Model model, HttpServletRequest request){
		
		model.addAttribute("elist", edao.getAllEmployee());
		
	      return "home";
	      
	      }
	
	

}
