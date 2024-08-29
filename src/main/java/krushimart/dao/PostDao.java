package krushimart.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import krushimart.dto.Post;

public class PostDao {
	
	
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/krushimart", "root", "root");
		} catch (Exception e) {
			e.getStackTrace();
		}
		return null;

	}
	
	public String addPost(Post post,int u_id) {
		
		Connection connection = getConnection();

		PreparedStatement preparedStatement;
		try {
			
			
			
			preparedStatement = connection.prepareStatement(
					"insert into post(p_id,name,quantity,price,discription,u_id) values(?,?,?,?,?,?)");

			preparedStatement.setInt(1, getPostNo());
			preparedStatement.setString(2, post.getName());
			preparedStatement.setDouble(3, post.getQuantity());
			preparedStatement.setDouble(4, post.getPrice());
			preparedStatement.setString(5, post.getDiscription());
			preparedStatement.setInt(6, u_id);
			

			if (preparedStatement.executeUpdate() != 0) 
			{
				return "saved";
			} 
			else 
			{
				return "unSaved";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
		
		
	}

	private int getPostNo() {
		try {

			Connection connection = getConnection();

			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("select * from post");

			int ct = 1;
			while (resultSet.next()) {
				ct++;
			}

			return ct;

		} catch (Exception e) {
		}
		return 0;
	}
	
	public ResultSet getAllPost() {
		{
			try {

				Connection connection = getConnection();

				Statement statement = connection.createStatement();
				return statement.executeQuery("select * from post");

				

			} catch (Exception e) {
			}
			
		}
		return null;
		
	}
	public ResultSet getUserPost(int id) {//write qry
		{
			try {

				Connection connection = getConnection();

				
				PreparedStatement preparedStatement=connection.prepareStatement("select * from post where u_id=?");
				preparedStatement.setInt(1, id);
				ResultSet resultSet = preparedStatement.executeQuery();
				return resultSet;

				

			} catch (Exception e) {
			}
			
		}
		return null;
		
	}

}
