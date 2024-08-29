package krushimart.dto;

public class User {
	
	private int u_id;
	private String first_name;
	private String last_name;
	private String email_id;
	private long phone_no;
	private String password;
	private String role;
	private String place;
	
	
	public User() {
		// TODO Auto-generated constructor stub
	}


	public User(int id, String first_name, String last_name, String email_id, String password, String role) {
		super();
		this.u_id = id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email_id = email_id;
		this.password = password;
		this.role = role;
	}
	
	


	public int getu_Id() {
		return u_id;
	}


	public void setu_Id(int id) {
		this.u_id = id;
	}


	public String getFirst_name() {
		return first_name;
	}


	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}


	public String getLast_name() {
		return last_name;
	}


	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}


	public String getEmail_id() {
		return email_id;
	}


	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	


	public long getPhone_no() {
		return phone_no;
	}


	public void setPhone_no(long phone_no) {
		this.phone_no = phone_no;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}
	


	public String getPlace() {
		return place;
	}


	public void setPlace(String place) {
		this.place = place;
	}


	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", first_name=" + first_name + ", last_name=" + last_name + ", email_id=" + email_id
				+ ", password=" + password + ", role=" + role + "]";
	}
	
	
	

}
