package com.model.Entity;

public class Book {
	private int book_id;
	private String book_name;
	private String author_name;
	public Book(int bookId, String bookName, String authorName) {
		book_id = bookId;
		book_name = bookName;
		author_name = authorName;
	}
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int bookId) {
		book_id = bookId;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String bookName) {
		book_name = bookName;
	}
	public String getAuthor_name() {
		return author_name;
	}
	public void setAuthor_name(String authorName) {
		author_name = authorName;
	}
	
}
