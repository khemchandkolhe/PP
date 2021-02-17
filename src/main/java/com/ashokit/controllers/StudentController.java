package com.ashokit.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ashokit.model.Student;

@Controller
@RequestMapping(value = "/stud")
public class StudentController {
	
	@ModelAttribute
	public void init(Model model) {//to setting default value
		
		//sending form binding object to ui
		System.out.println("StudentController.init()");
		List<String> courseList=new ArrayList<String>();
		courseList.add("Java");
		courseList.add("Oracle");
		courseList.add("Python");
		courseList.add(".Net");
		courseList.add("PHP");


		model.addAttribute("courseList",courseList);
		
		List<String> timingsList=new ArrayList<String>();
		timingsList.add("Morning");
		timingsList.add("Afternoon");
		timingsList.add("Evening");
		
		model.addAttribute("timingsList",timingsList);
		
		List<String>  gender=new ArrayList<String>();
		gender.add("Male");
		gender.add("Female");
		
		model.addAttribute("gender",gender);
		

		Student s=new Student();
		s.setUname("Ram");
		model.addAttribute("student",s);
		
		
	}
	
	
	
	@GetMapping(value = {"/","/register" })
	public String loadForm(Model model)
	{/*
		 * Student s=new Student(); System.out.println("StudentController.loadForm()");
		 * model.addAttribute("student",s);
		 */
		
		return "studentReg";
		
	}
	@PostMapping("/register")
	public String submitFormBtn(@ModelAttribute("student")Student s,Model model)
	{
		
		System.out.println(s);
		
		
		//sending response to ui
		System.out.println("StudentController.submitFormBtn()");
		model.addAttribute("succMsg","Registration Successful");
		return "regSuccess1";
	}

}
