package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Book;
import com.repository.BookRepository;

@Service
public class BookService {
	
	@Autowired
	BookRepository bookRepository;
	
	public void saveBook(Book book) {
		this.bookRepository.saveNewBook(book);
	}
	
	public List<Book> getAllBook() {
		List<Book> books = this.bookRepository.getAllBook();
		return books;
	}
	public Book getSingleBook(int id) {
		Book book = this.bookRepository.getSingleBook(id);
	    return book;
	}
	
	public void deleteBook(Book book) {
		this.bookRepository.deleteBook(book);
	}
	
	public void updateBook(Book book) {
		this.bookRepository.updateBook(book);
	}

}
