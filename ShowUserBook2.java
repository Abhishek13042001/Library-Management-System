package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.beans.AddBook;

public class ShowUserBook2 {
public  List AddBook(int id) {
	Connection con =Connection1.connect();
	ArrayList<AddBook> list = new ArrayList<AddBook>();
	
	try {
		PreparedStatement ps = con.prepareStatement("select Book.bookname,Book.bookauthor,Book.bookpublisher,Book.id as BookId,crud1.id as StudentId from crud1 left join ShowBook on crud1.id=ShowBook.user_id left join Book on ShowBook.book_id=Book.id where crud1.id=?");
	    ps.setInt(1, id);
	    ResultSet rs = ps.executeQuery();
	    
	    while(rs.next()) {
	    	AddBook book = new AddBook();
	    book.setBookname(rs.getString("bookname"));
	    book.setBookauthor(rs.getString("bookauthor"));
	    book.setBookpublisher(rs.getString("bookpublisher"));
	    book.setId(rs.getInt("BookId"));
	    list.add(book);
	    }
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	
	
	return list;
	
}

}
