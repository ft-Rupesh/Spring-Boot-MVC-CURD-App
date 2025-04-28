package com.globex.model;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import io.micrometer.common.lang.NonNull;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import jakarta.persistence.Version;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@Entity
//@RequiredArgsConstructor
@NoArgsConstructor
@Table(name="Boot_CURD_Student")
public class Student {
	@Id
	@SequenceGenerator(name="gen1",sequenceName = "ACTOR_SEQ",initialValue=100,allocationSize = 1)
	@GeneratedValue(generator = "gen1",strategy = GenerationType.SEQUENCE)
	private Integer sid;
	@Column(length=30)
	@NonNull
	private String sname;
	@Column(length=30)
	@NonNull
	private String addrs;
	@NonNull
	private Double fee;
	@Column(length=30)
	@NonNull
	private String category;
	
	//This are meta data column which carry data...
	@CreationTimestamp
	@Column	(updatable = false)//Time stamp feature 
	private LocalDateTime createDate;
	
	@UpdateTimestamp
	@Column	(insertable = false)//Time stamp feature 
	private LocalDateTime updateDate;
	
	@Version
	public Integer updateCount;//Version feature...
	
	@Column(length=30,updatable = false)
	private String createdBy;
	@Column(length=30 ,insertable = false)
	private String updatedBy;
	
	
}
