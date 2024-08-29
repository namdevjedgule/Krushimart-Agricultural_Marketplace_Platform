package krushimart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import krushimart.dao.UserDao;
import krushimart.dto.User;

@WebServlet("/login")
public class Login extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		System.out.println(username);
		System.out.println(password);
		UserDao userDao = new UserDao();

		 User user = userDao.getUser(username,password);
		 
		 if(user!=null)
		 {
			 HttpSession session= req.getSession();
			 
			 
			    session.setAttribute("u_id", user.getu_Id());	
				session.setAttribute("first_name",user.getFirst_name() );
				session.setAttribute("last_name",user.getLast_name());
				session.setAttribute("email_id", user.getEmail_id());
				session.setAttribute("phone_no",String.valueOf(user.getPhone_no()));
				session.setAttribute("place",user.getPlace());
			    session.setAttribute("role", user.getRole());		
			    session.setAttribute("place", user.getPlace());	
			    
			    
					
					RequestDispatcher requestDispatcher=req.getRequestDispatcher("HomePage.jsp");
					requestDispatcher.include(req, resp);
		 }
		 else
		 {
			 PrintWriter printWriter = resp.getWriter();
				printWriter.write("<div align='center'><h1 style=color:red> Invalid credentials ! </h1></div>");
			    RequestDispatcher requestDispatcher=req.getRequestDispatcher("LoginPage.jsp");
				requestDispatcher.include(req, resp);
		 }
		
		
	}

}
