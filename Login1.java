package com.classCreation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Dao.Connection1;

public class Login1 {
public  String Login(String email , String password) {
	String i =null;
	Connection con = Connection1.connect();
	try {
		PreparedStatement ps = con.prepareStatement("select * from crud1 where email=? and password=?");
		ps.setString(1, email);
		ps.setString(2, password);
		// i = ps.executeUpdate();
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			i=rs.getString("name");
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return i;
	
	
	
}
}
