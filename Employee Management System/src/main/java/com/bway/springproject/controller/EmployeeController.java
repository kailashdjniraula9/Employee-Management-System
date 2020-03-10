package com.bway.springproject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bway.springproject.dao.EmployeeDao;
import com.bway.springproject.model.Employee;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeDao edao;

	@RequestMapping(value = "/employee", method = RequestMethod.GET)
	public String getEmployeeForm(Model model, HttpSession session) {

		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}

		model.addAttribute("emodel", new Employee());

		return "employeeForm";
	}

	@RequestMapping(value = "/employee", method = RequestMethod.POST)
	public String saveEmployee(@ModelAttribute Employee e, Model model, HttpSession session) {

		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}

		edao.addEmployee(e);

		model.addAttribute("emodel", new Employee());
		return "employeeForm";
	}
	
	@RequestMapping(value = "/{id}/delete", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id, Model model, HttpSession session) {

		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}

		edao.deleteEmployee(id);
		model.addAttribute("elist", edao.getAllEmployee());

		return "redirect:/employeelist";
	}

	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, Model model, HttpSession session) {

		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}

		model.addAttribute("emodel", edao.getById(id));

		return "editForm";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute Employee emp, Model model, HttpSession session) {

		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}

		edao.updateEmployee(emp);
		model.addAttribute("elist", edao.getAllEmployee());

		return "employeelist";
	}

	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model, HttpSession session) {

		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}

		model.addAttribute("elist", edao.getAllEmployee());
		return "home";
	}
	
	@RequestMapping(value = "/employeelist", method = RequestMethod.GET)
	public String getEmployeeList(Model model, HttpSession session) {

		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}

		model.addAttribute("elist", edao.getAllEmployee());

		return "employeelist";
	}
	



}
