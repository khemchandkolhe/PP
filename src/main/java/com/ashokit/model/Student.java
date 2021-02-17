package com.ashokit.model;

import lombok.Data;

@Data
public class Student {
	
	private String uname;
	private String pwd;
	private String email;
	private Long phno;
	private String gender;
	private String course;
	private String[] preferredTime;

}
