package com.Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.beans.AddBook;

public class SelectBookDetails {
public static List<AddBook> getallbook() {
	List book = new ArrayList<AddBook>();
	Connection connection=Connection1.connect();
	
	
	
	try {
		
		PreparedStatement ps = connection.prepareStatement("select * from Book");
	    ResultSet rs = ps.executeQuery();
	    while(rs.next()) {
	    	AddBook b = new AddBook();
	    	b.setId(rs.getInt("id"));
	    	b.setBookname(rs.getString("bookname"));
	    	b.setBookauthor(rs.getString("bookauthor"));
	    	b.setBookpublisher(rs.getString("bookpublisher"));
	    book.add(b);
	    }
	
	
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return book;
	
}
}
