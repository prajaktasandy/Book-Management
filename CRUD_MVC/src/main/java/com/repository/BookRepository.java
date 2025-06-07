package com.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.entity.Book;

@Repository
public class BookRepository {
// changes from sandeep
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
    @Transactional
    public void saveNewBook(Book book) {
		this.hibernateTemplate.save( book);
	}
    public List<Book> getAllBook() {
    	List<Book> books = this.hibernateTemplate.loadAll(Book.class);
    	return books;
    }
    
    public Book getSingleBook(int id) {
    	Book book = this.hibernateTemplate.get(Book.class,id);
    	return book;
    }
    
    @Transactional
    public void deleteBook(Book book) {
    	this.hibernateTemplate.delete(book);
    }
    @Transactional
    public void updateBook(Book book) {
    	this.hibernateTemplate.update(book);
    }
}
