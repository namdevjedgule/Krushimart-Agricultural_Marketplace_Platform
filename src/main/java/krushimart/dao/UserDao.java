package krushimart.dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;

import krushimart.dto.User;

public class UserDao {

	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/krushimart", "root", "root");
		} catch (Exception e) {
			e.getStackTrace();
		}
		return null;

	}

	public String saveUser(User user) {

		if (checkEmail_id(user.getEmail_id())) {
			if (checkPhone_no(user.getPhone_no())) {
				Connection connection = getConnection();

				PreparedStatement preparedStatement;
				try {
					preparedStatement = connection.prepareStatement(
							"insert into user(u_id,first_name,last_name,email_id,password,phone_no,role) values(?,?,?,?,?,?,?)");

					preparedStatement.setInt(1, getUserNo());
					preparedStatement.setString(2, user.getFirst_name());
					preparedStatement.setString(3, user.getLast_name());
					preparedStatement.setString(4, user.getEmail_id());
					preparedStatement.setString(5, user.getPassword());
					preparedStatement.setLong(6, user.getPhone_no());
					preparedStatement.setString(7, user.getRole());

					if (preparedStatement.executeUpdate() != 0) {
						return "saved";
					} else {
						return "unSaved";
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else {
				return "phone_noAlreadyTaken";
			}

		} else {
			return "email_idAlreadyTaken";
		}
		return null;

	}

	public int getUserNo() {

		try {

			Connection connection = getConnection();

			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("select * from user");

			int ct = 1;
			while (resultSet.next()) {
				ct++;
			}

			return ct;

		} catch (Exception e) {
		}
		return 0;

	}

	public boolean checkEmail_id(String email_id) {

		Connection connection = getConnection();

		try {
			PreparedStatement preparedStatement = connection.prepareStatement("select * from user where email_id =?");
			preparedStatement.setString(1, email_id);

			ResultSet resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return false;
			}
			return true;

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return false;

	}

	public boolean checkPhone_no(long phone_no) {

		Connection connection = getConnection();

		try {
			PreparedStatement preparedStatement = connection.prepareStatement("select * from user where email_id =?");
			preparedStatement.setLong(1, phone_no);

			ResultSet resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return false;
			}
			return true;

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return false;

	}

	/*
	 * fetching user detailes in order to create session if emial_id and Password is
	 * correct
	 */

	public User getUser(String email_id, String password) {
		try {
			Connection connection = getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement("select * from user where email_id=? and password=?");
			preparedStatement.setString(1, email_id);
			preparedStatement.setString(2, password);

			User user = null;
			 ResultSet resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				
				user=new User();
				user.setu_Id(resultSet.getInt("u_id"));
				user.setFirst_name(resultSet.getString("first_name"));
				user.setLast_name(resultSet.getString("last_name"));				
				user.setEmail_id(email_id);
				user.setPhone_no(resultSet.getLong("phone_no"));
				user.setRole(resultSet.getString("role"));
				user.setPlace(resultSet.getString("place"));
				
				return user;

			}
			else
			{
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

}
