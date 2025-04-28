package com.globex.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.globex.model.Student;

public interface IStudentRepository extends JpaRepository<Student, Integer>{

}
