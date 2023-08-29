package com.student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.student.dao.StudentDAO;
import com.student.dto.Student;

@Controller
public class StudentController {
	@Autowired//Injecting the object
	private StudentDAO studentDAO;
	//StudentDao studentDao=new StudentDao();
	@RequestMapping("/")
	public ModelAndView homePage()
	{
		ModelAndView modelAndView=new ModelAndView();//it is a class and have some methods() to perform operations
		modelAndView.setViewName("home.jsp");
		return modelAndView;
	}
	@RequestMapping("/register")
	public ModelAndView registerStudent()
	{
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("nullStudent", new Student());//key= student,value=new student()
		modelAndView.setViewName("register.jsp");
		return modelAndView;
	}
	@RequestMapping("/save")
	public ModelAndView saveStudent(@ModelAttribute Student student) {

		ModelAndView modelAndView=new ModelAndView();
		studentDAO.saveStudent(student);
		modelAndView.setViewName("home.jsp");
		return modelAndView;
	}	

	@RequestMapping("/display")
	public ModelAndView findAllStudent()
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("display.jsp");
		modelAndView.addObject("students", studentDAO.findAllStudent());
		return modelAndView;
	}
	@RequestMapping("/updateStudent")
	public ModelAndView updateStudent(@RequestParam int id)
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("update.jsp");
		modelAndView.addObject("existingStudent", studentDAO.findStudent(id));
		return modelAndView;
	}
	@RequestMapping("/saveUpdatedStudent")
	public ModelAndView saveUpdatedStudent(@ModelAttribute Student updatedStudent)
	{
		ModelAndView modelAndView = new ModelAndView();
		studentDAO.updateStudent(updatedStudent);

		modelAndView.setViewName("display.jsp");
		modelAndView.addObject("student", studentDAO.findAllStudent());
		return modelAndView;

	}

}