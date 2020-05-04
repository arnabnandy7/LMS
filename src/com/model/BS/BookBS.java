package com.model.BS;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.model.Dao.ConnectDB;
import com.model.Entity.Book;

public class BookBS {
	public ArrayList<Book> ShowAllBook()
	{
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		ArrayList<Book> al=new ArrayList<Book>();
		
		con=ConnectDB.do_Connect();
		String sql="select book_id,book_name,author_name from lms_book";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next())
			{
				int bid=rs.getInt(1);
				String bnm=rs.getString(2);
				String anm=rs.getString(3);
				Book b=new Book(bid,bnm,anm);
				al.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return al;
	}
	public int InsertBook(Book e)
	{
		int i=0;
		Connection con=null;
		PreparedStatement ps=null;
		con=ConnectDB.do_Connect();
		String sql="insert into lms_book(book_id,book_name,author_name) values(?,?,?)";
		try{
			ps=con.prepareStatement(sql);
			ps.setInt(1, e.getBook_id());
			ps.setString(2, e.getBook_name());
			ps.setString(3, e.getAuthor_name());
			i=ps.executeUpdate();
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
		return i;
	}
	public int DeleteBook(int key)
	{
		int i=0;
		Connection con=null;
		PreparedStatement ps=null;
		con=ConnectDB.do_Connect();
		String sql="delete from lms_book where book_id=?";
		
		try {
			ps=con.prepareStatement(sql);
			ps.setInt(1, key);
			i=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	public int UpdateBook(Book e)
	{
		int i=0;
		Connection con=null;
		PreparedStatement ps=null;
		con=ConnectDB.do_Connect();
		String sql="update lms_book set book_name='"+e.getBook_name()+"',author_name='"+e.getAuthor_name()+"' where book_id="+e.getBook_id();
		try{
			ps=con.prepareStatement(sql);
			i=ps.executeUpdate();
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
		return i;
	}
}
