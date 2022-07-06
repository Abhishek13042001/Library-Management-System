package com.Dao;

import java.sql.*;

import com.beans.AddBook;

public class SaveDetailsBook1 {
public void save(AddBook book) {
	Connection con = Connection1.connect();
	
  try {
	PreparedStatement ps = con.prepareStatement("insert into Book(bookname,bookauthor,bookpublisher) values(?,?,?)");
     ps.setString(1, book.getBookname());
  ps.setString(2, book.getBookauthor());
  ps.setString(3, book.getBookpublisher());
  ps.execute();
  
  } catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


}
}
