package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.beans.AddStudents;

public class UpdateDetails1 {
public AddStudents Update(int id) {
	Connection con = Connection1.connect();
	 AddStudents students = new AddStudents();
	try {
		PreparedStatement ps = con.prepareStatement("select * from crud1 where id =?");
	     ps.setInt(1, id);
	     ResultSet rs = ps.executeQuery();
	    
	     while(rs.next()) {
	    	 students.setId(rs.getInt("id"));
	    	 students.setName(rs.getString("name"));
	    	 students.setEmail(rs.getString("email"));
	    	 students.setPassword(rs.getString("password"));
	    	 students.setAddress(rs.getString("address"));
	    	 students.setCity(rs.getString("city"));
	     }
	
	
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return students;
}
}
