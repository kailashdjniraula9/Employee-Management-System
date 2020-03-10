package com.bway.springproject.dao;

import java.util.List;


import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bway.springproject.model.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {
	
	@Resource
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public void addEmployee(Employee emp) {

		Session ses = sessionFactory.getCurrentSession(); 
		ses.save(emp);
		
	}

	@Override
	@Transactional
	public void deleteEmployee(int id) {
		
		Session ses = sessionFactory.getCurrentSession();
		Employee e = (Employee) ses.get(Employee.class, id);
		ses.delete(e);
	}

	@Override
	@Transactional
	public void updateEmployee(Employee emp) {
		
		Session ses = sessionFactory.getCurrentSession();
		ses.update(emp);
	}

	@Override
	@Transactional
	public Employee getById(int id) {
	
		Session ses = sessionFactory.getCurrentSession();
		Employee emp = (Employee) ses.get(Employee.class, id);
		
		
		return emp;
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<Employee> getAllEmployee() {
		
		Session ses = sessionFactory.getCurrentSession();
		Criteria crt = ses.createCriteria(Employee.class);
	
		return crt.list();
	}

}
