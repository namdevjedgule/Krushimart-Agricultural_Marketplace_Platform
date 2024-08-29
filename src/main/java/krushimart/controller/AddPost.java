package krushimart.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import krushimart.dao.PostDao;
import krushimart.dto.Post;

@WebServlet("/addpost")
public class AddPost extends HttpServlet
{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		
		String name=req.getParameter("name");
		
		double quantity=Double.parseDouble(req.getParameter("quantity"));
	    double price=Double.parseDouble(req.getParameter("price"));
		String discription=req.getParameter("discription");		
		
		int u_id= (Integer) req.getSession().getAttribute("u_id");
		
		Post post=new Post();		
		post.setName(name);
		post.setQuantity(quantity);
		post.setPrice(price);
		post.setDiscription(discription);
		
		
		
		PostDao postDao=new PostDao();
		
		String value=postDao.addPost(post,u_id );
		if(value.equalsIgnoreCase("saved"))
		{
			 PrintWriter printWriter = resp.getWriter();
				printWriter.write("<div align='center'><h1 style=color:green> Post Added Successfully! </h1></div>");
			    RequestDispatcher requestDispatcher=req.getRequestDispatcher("PostPage.jsp");
				requestDispatcher.include(req, resp);
		}
		else
		{
			 PrintWriter printWriter = resp.getWriter();
				printWriter.write("<div align='center'><h1 style=color:red> Failed To Add Post ! </h1></div>");
			    RequestDispatcher requestDispatcher=req.getRequestDispatcher("PostPage.jsp");
				requestDispatcher.include(req, resp);
		}
	}
	
	

}
