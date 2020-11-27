package com.example.demo;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class MyController {

	@Autowired
	StudentRepo srepo;
	
	
	
	@RequestMapping("/")
	public String getBaseFile(Model m)
	{
		Student s = new Student();
		m.addAttribute("Student", s);
		return "enterStudentInfo.jsp";
	}
	
	
	@PostMapping("readdata")
	public String readStudentData(@ModelAttribute Student s, Model m) 
	{
		//save in database
		srepo.save(s);
		
		//fetch all students from database
		List<Student> list = srepo.findAll();
		
		//add these student objects in model
		m.addAttribute("StudentList", list);
		
		//list.add(s);
		
		
		System.out.println(s.firstname+" "+s.lastname+" "+s.gender+" "+s.course);
		return "displayStudentInfo.jsp";
	}
}
