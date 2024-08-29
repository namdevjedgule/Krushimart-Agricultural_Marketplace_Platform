package krushimart.controller;

import java.io.FileWriter;
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

import krushimart.dao.UserDao;
import krushimart.dto.User;

@WebServlet("/register")
public class Register extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// int id=Integer.parseInt(req.getParameter("id"));
		String firstName = req.getParameter("firstname");
		String lastName = req.getParameter("lastname");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		long phone = Long.parseLong(req.getParameter("phone"));

		String role = req.getParameter("role");
		System.out.println(role);
		String actualRole = "";
		if (role.equalsIgnoreCase("farmer")) {
			actualRole = "farmer";

		} else {
			actualRole = "buyer";
		}

		User user = new User();
		user.setFirst_name(firstName);
		user.setLast_name(lastName);
		user.setEmail_id(email);
		user.setPassword(password);
		user.setPhone_no(phone);
		user.setRole(actualRole);

		UserDao userDao = new UserDao();

		String returnValue = userDao.saveUser(user);
		if (returnValue.equalsIgnoreCase("email_idAlreadyTaken")) 
		{
			PrintWriter printWriter = resp.getWriter();
			printWriter.write("<h1 style=color:red> Email_id Is Already Taken ! </h1>");
			
			if (role.equalsIgnoreCase("farmer"))
			{
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("FarmerRegistrationForm.jsp");
				requestDispatcher.include(req, resp);
			} else 
			{

				RequestDispatcher requestDispatcher = req.getRequestDispatcher("LoginPage.jsp");
				requestDispatcher.include(req, resp);

			}
		} else if (returnValue.equalsIgnoreCase("phone_noAlreadyTaken")) 
		{
			PrintWriter printWriter = resp.getWriter();
			printWriter.write("<h1 style=color:red> Phone_no Is Already Taken ! </h1>");
			if (role.equalsIgnoreCase("farmer")) {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("FarmerRegistrationForm.jsp");
				requestDispatcher.include(req, resp);
			} else {

				RequestDispatcher requestDispatcher = req.getRequestDispatcher("BuyerRegistrationForm.jsp");
				requestDispatcher.include(req, resp);

			}
		} else if (returnValue.equalsIgnoreCase("saved")) 
		{
			PrintWriter printWriter = resp.getWriter();
			printWriter.write("<h1 style=color:green> Registration Done Please Login ! </h1>");

			RequestDispatcher requestDispatcher = req.getRequestDispatcher("LoginPage.jsp");
			requestDispatcher.include(req, resp);
		} else if (returnValue.equalsIgnoreCase("unSaved")) 
		{
			if (role.equalsIgnoreCase("farmer")) {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("FarmerRegistrationForm.jsp");
				requestDispatcher.include(req, resp);
			} else {

				RequestDispatcher requestDispatcher = req.getRequestDispatcher("BuyerRegistrationForm.jsp");
				requestDispatcher.include(req, resp);

			}

		}

		
	}

}
