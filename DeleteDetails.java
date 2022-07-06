package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteDetails {
public int DeleteDetails(int id) {
	Connection con = Connection1.connect();
	PreparedStatement ps;
	int i =0;
	try {
		ps = con.prepareStatement("delete from crud1 where id = ?");
		ps.setInt(1, id);
		i=ps.executeUpdate();	
	} catch (SQLException e) {
		
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return 0;
}
}
