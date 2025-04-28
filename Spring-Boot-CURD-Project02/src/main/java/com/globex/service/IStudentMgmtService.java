package com.globex.service;

import java.util.List;

import com.globex.model.Student;

public interface IStudentMgmtService {
	public String registerStudent(Student student);
	public List<Student> showAllStudents();
	public String editStudent(Student student);
	public Student fetchById(Integer id);
	public String deleteStudentById(int id);
}
