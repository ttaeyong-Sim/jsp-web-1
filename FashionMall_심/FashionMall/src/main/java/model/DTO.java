package model;

import java.io.Serializable;




public class DTO implements Serializable{
	private static final long serialVersionUID=-4274700572038677000L;
	

	private String productId; //상품 고유키
	private String productName;
	private int price;
	private String p_category; 
	private String color;
	private String p_size; 
	private String p_description; //상품설명
	private int stock; //재고량
	private String listingDate; //등록일
	private String imagePath; 
	private double rating; //평점
	private String status; //상태
	private int quantity;
	
	@Override
	public String toString() {
	    return "DTO{" +
	           "productId='" + productId + '\'' +
	           ", productName='" + productName + '\'' +
	           ", price='" + price + '\'' +
	           ", p_category='" + p_category + '\'' +
	           ", color='" + color + '\'' +
	           ", p_size='" + p_size + '\'' +
	           ", p_description='" + p_description + '\'' +
	           ", stock='" + stock + '\'' +
	           ", listingDate='" + listingDate + '\'' +
	           ", imagePath='" + imagePath + '\'' +
	           ", rating='" + rating + '\'' +
	           ", status='" + status + '\'' +
	           '}';
	}
	public DTO() {
        //super(); 필요하진않음 기본생성자가 자동 호출되니까
    }
	public DTO(String productId, String productName, int price) {
		this.productId = productId;
		this.productName = productName;
		this.price = price;		
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getP_Category() {
		return p_category;
	}
	public void setP_Category(String p_category) {
		this.p_category = p_category;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getP_Size() {
		return p_size;
	}
	public void setP_Size(String p_size) {
		this.p_size = p_size;
	}
	public String getP_Description() {
		return p_description;
	}
	public void setP_Description(String p_ddescription) {
		this.p_description = p_ddescription;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getListingDate() {
		return listingDate;
	}
	public void setListingDate(String listingDate) {
		this.listingDate = listingDate;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
