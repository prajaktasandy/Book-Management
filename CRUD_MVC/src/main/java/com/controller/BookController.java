package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entity.Book;
import com.service.BookService;

@Controller
public class BookController {

	@Autowired
	BookService bookService;

	@RequestMapping(path = "/")
	public String getIndex() {
		return "index";
	}

	@RequestMapping(path = "/addBook")
	public String addBook() {
		return "addBook";
	}

	@RequestMapping(path = "/bookAdded", method = RequestMethod.POST)
	public String bookAdded(@ModelAttribute Book book, Model m) {
		this.bookService.saveBook(book);
		// -----------------------------------------//
		List<Book> books = this.bookService.getAllBook();
		m.addAttribute("books", books);
		return "display";
	}

	@RequestMapping(path = "/delete/{bookId}")
	public String deleteBookById(@PathVariable("bookId") int bookId, Model m) {
		Book book = this.bookService.getSingleBook(bookId);
		this.bookService.deleteBook(book);
		List<Book> books = this.bookService.getAllBook();
		m.addAttribute("books", books);
		return "display";

	}

	@RequestMapping(path = "/update/{bookId}")
	public String getUpdateForm(@PathVariable("bookId") int bookId, Model m) {
		Book book = this.bookService.getSingleBook(bookId);
		m.addAttribute("book", book);
		return "updateForm";
	}

	@RequestMapping(path = "/update/updateSuccess", method = RequestMethod.POST)
	public String updateSuccess(@ModelAttribute Book book, Model m) {
		this.bookService.updateBook(book);
		List<Book> books = this.bookService.getAllBook();
		m.addAttribute("books", books);
		return "display";
	}
}
