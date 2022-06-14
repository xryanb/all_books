package com.mvc.controllers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.models.Book;
import com.mvc.services.BookService;

@Controller
public class BookController {

	@Autowired
	BookService bookService;
	
		 @RequestMapping("/books")
	    public String index(Model model) {
			 ArrayList<Book> books= (ArrayList<Book>) bookService.allBooks();
	        model.addAttribute("books", books);
	        return "index.jsp";
	    }
	
		@GetMapping("/books/{bookId}")
		public String index(@PathVariable("bookId") Long bookId, Model model){
			System.out.println(bookId);
			Book book=bookService.findBook(bookId);
			System.out.println(book);
			model.addAttribute("book",book);

			
			return "show.jsp";
		}
}
