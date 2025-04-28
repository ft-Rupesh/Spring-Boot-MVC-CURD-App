package com.globex.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globex.model.Student;
import com.globex.repository.IStudentRepository;
@Service
public class StudentMgmtServiceImpl implements IStudentMgmtService{
@Autowired
private IStudentRepository studentRepo;

@Override
public String registerStudent(Student student) {
	student.setCreatedBy(System.getProperty("user.name"));
	int idVal=studentRepo.save(student).getSid();
	return "Actor object is saved id Value::"+idVal;
}

@Override
public List<Student> showAllStudents() {
	// TODO Auto-generated method stub
	return studentRepo.findAll();
}

@Override
public String editStudent(Student student) {
	System.out.println("StudentMgmtServiceImpl.editStudent()");
	System.out.println(""+student.getSid());
	Optional<Student> opt=studentRepo.findById(student.getSid());
	if(opt.isPresent()) {
		Student student1=opt.get();
		student.setUpdateCount(student1.getUpdateCount());
		student.setUpdatedBy(System.getProperty("user.name"));
		studentRepo.save(student);
		return student1.getSid()+"Student data is modified";
	}
	return student.getSid()+"Student is not found";
}

@Override
public Student fetchById(Integer id) {
	Student student = null;
	try {
		student = studentRepo.findById(id).orElseThrow(()->new IllegalAccessException("Invalid Id"));
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	return student;
}

@Override
public String deleteStudentById(int id) {
	Optional<Student>opt=studentRepo.findById(id);
	if(opt.isPresent()) {
		studentRepo.deleteById(id);
		return id+"Student is remove";
	}
	return id+"Student is not found for delete";
}

}
