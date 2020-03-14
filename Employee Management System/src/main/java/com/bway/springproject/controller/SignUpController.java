package com.bway.springproject.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bway.springproject.dao.UserDao;
import com.bway.springproject.model.User;

@Controller
public class SignUpController {

	@Autowired
	private UserDao udao;

	@RequestMapping(value = "/userSignup", method = RequestMethod.GET)
	public String getSignUpForm() {

		return "signup";
	}

	@RequestMapping(value = "/userSignup", method = RequestMethod.POST)
	public String userSignUp(@ModelAttribute User u, Model model, HttpSession session, HttpServletRequest req)
			throws IOException {

		String input = req.getParameter("g-recaptcha-response");
		boolean result = VerifyRecaptcha.verify(input);

		if (result) {

			String un = req.getParameter("username");


			if (udao.isUserValid(un)) {
				u.setPassword(DigestUtils.md5DigestAsHex(u.getPassword().getBytes()));
				udao.userSignUP(u);

				return "login";
			}

			else {
				model.addAttribute("error", "UserName already Exist.");

				return "signup";
			}

		} else {

			model.addAttribute("error", "You are not Human!!!");

			return "signup";
		}
	}

}
