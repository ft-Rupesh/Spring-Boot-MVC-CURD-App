package com.globex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.globex.model.Student;
import com.globex.service.IStudentMgmtService;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentOperationsController {

	@Autowired
	private IStudentMgmtService studentService;
	
	@GetMapping("/")
	public String showHomePage() {
		System.out.println("StudentOperationsController.showHomePage()");
		return "welcome";
	}
	
	@GetMapping("/report")//(G)
	public String showReport(Map<String,Object>map) {
		System.out.println("StudentOperationsController.showReport()");
		//use service
		List<Student>list=studentService.showAllStudents();
		//keep the result in model Attribute
		map.put("listStudents",list);
		//Return LVN
		return"show_report";
	}
	
	@GetMapping("/register")
	public String showFromPageForRegisterStudent(@ModelAttribute("student")Student student) {
		return "student_register_from";
	}
	@PostMapping("/register")
	public String registerStudent(@ModelAttribute Student student,HttpSession ses) {
		String msg=studentService.registerStudent(student);
		ses.setAttribute("resultMsg", msg);
		return"redirect:report";
	}
	@GetMapping("/edit")
	public String editStudentFormPage(@ModelAttribute("student") Student student, @RequestParam("no") Integer id) {
		Student student1 = studentService.fetchById(id);
			BeanUtils.copyProperties(student1, student); 
		return "student_edit_form";
	}
	@PostMapping("/edit")
	public String editStudent(@ModelAttribute("student") Student student,RedirectAttributes attrs) {
		System.out.println("StudentOperationsController.");
		String msg = studentService.editStudent(student);
		attrs.addFlashAttribute("resultMsg",msg);
		return "redirect:report";
	}
	@GetMapping("/delete")
	public String removeStudentById(@RequestParam("no")int id,Map<String,Object>map) {
		//use service
		String msg=studentService.deleteStudentById(id);
		map.put("resultMsg",msg);
		return "forward:report";
	}
}
