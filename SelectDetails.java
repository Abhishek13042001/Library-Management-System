package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.beans.AddStudents;

public class SelectDetails {
public AddStudents students(int id) {
	AddStudents student = new AddStudents();
	try {
		Connection con = Connection1.connect();
		PreparedStatement ps = con.prepareStatement("select * from crud1 where id = ?");
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			student.setId(rs.getInt(1));
			student.setName(rs.getString(2));
		      student.setEmail(rs.getString(3));
		      student.setPassword(rs.getString(4));
		      student.setAddress(rs.getString(5));
               student.setCity(rs.getString(6));		
		
		}
		
		
		
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return student;
	
}

public  static List<AddStudents>  getAllStudents(){
	List addstudent = new ArrayList<AddStudents>();
	Connection con = Connection1.connect();
	try {
		PreparedStatement ps = con.prepareStatement("select * from crud1");
	    ResultSet rs = ps.executeQuery();
	   
	    while(rs.next()) {
	    	 AddStudents s = new AddStudents();	
	    	 
	    	s.setId((rs.getInt(1)));
	    	s.setName((rs.getString(2)));
	    	s.setEmail((rs.getString(3)));
	        s.setPassword(rs.getString(4));
	     s.setAddress(rs.getString(5));
	     s.setCity(rs.getString(6));
	     addstudent.add(s);
	    }
	  
	   
	
	
	      
	
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return addstudent;
	
}

}
