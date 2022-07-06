package com.Dao;

import java.sql.Connection;
import java.sql.DriverManager;


public class Connection1 {
public  static Connection connect() {
Connection	connect= null;
	  try {
			Class.forName("com.mysql.cj.jdbc.Driver");
	 connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/advancejava","root","root");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return  connect;
	
}
}
