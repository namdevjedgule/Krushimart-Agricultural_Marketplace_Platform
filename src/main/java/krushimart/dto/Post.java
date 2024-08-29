package krushimart.dto;

public class Post {
	
	private int p_id;
	private String name;
	private double quantity;
	private double price; 
	private String discription;
	
	
	public Post() {
		// TODO Auto-generated constructor stub
	}


	public Post(int p_id, String name, double quantity, double price, String discription) {
		super();
		this.p_id = p_id;
		this.name = name;
		this.quantity = quantity;
		this.price = price;
		this.discription = discription;
	}
	
	
	public int getP_id() {
		return p_id;
	}


	public void setP_id(int p_id) {
		this.p_id = p_id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public double getQuantity() {
		return quantity;
	}


	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public String getDiscription() {
		return discription;
	}


	public void setDiscription(String discription) {
		this.discription = discription;
	}


	@Override
	public String toString() {
		return "Post [p_id=" + p_id + ", name=" + name + ", quantity=" + quantity + ", price=" + price + ", discription="
				+ discription + "]";
	}
	
	
	
	

}
