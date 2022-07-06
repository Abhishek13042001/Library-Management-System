package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.beans.AddStudents;

public class SaveDetails1 {
public  static int  Save(AddStudents e) {
	Connection con = Connection1.connect();
	int status=0;
	try {
		PreparedStatement ps = con.prepareStatement("insert into crud1(name,email,password,address,city) values(?,?,?,?,?) ");
	     ps.setString(1, e.getName());
	     ps.setString(2, e.getEmail());
	     ps.setString(3, e.getPassword());
	 ps.setString(4, e.getAddress());
	 ps.setString(5, e.getCity());
	 status=ps.executeUpdate();
	
	
	} catch (Exception e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
	
	
	
	
	
	
	return status;
	
}
}
