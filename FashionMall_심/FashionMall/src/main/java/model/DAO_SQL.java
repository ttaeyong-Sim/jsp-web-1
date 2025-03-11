package model;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.sql.Date;
import java.util.ArrayList;






public class DAO_SQL {
	Connection conn = null;
	//▼싱글톤 객체 패턴을 사용하여 DAO_SQL 클래스의 인스턴스를 하나만 생성
	private static DAO_SQL instance = new DAO_SQL();
	
	 //▼싱글톤 패턴을 구현하는 메서드: getInstance() 호출 시 하나의 인스턴스를 반환
	public static DAO_SQL getInstance() {
	 return instance;
	}
	private DAO_SQL(){ //생성자 -클래스가 만들어질 때 실행되는 특별한 메서드
		
		try {
		
		Class.forName("oracle.jdbc.OracleDriver");//JDBC Driver등록
		
		//연결하기
		conn = DriverManager.getConnection (
				
				"jdbc:oracle:thin:@localhost:1521/xe",
				"System",
				"oracle"
				);

			
				} catch (Exception e) {
				e.printStackTrace();	
			}
		}
	
	public ArrayList<DTO> getALLData() { //상품목록표시
			ArrayList<DTO> dataInfo = new ArrayList<DTO>();
		try {
			String sql = "SELECT * from PRODUCT";
			
			PreparedStatement readData = conn.prepareStatement(sql);
			
			ResultSet p_data = readData.executeQuery();
			
			while(p_data.next()) {
				DTO property = new DTO(); 
				property.setProductId(p_data.getString("productId"));
				property.setProductName(p_data.getString("productName"));
				property.setPrice(p_data.getInt("price"));
				property.setP_Category(p_data.getString("p_category"));
				property.setColor(p_data.getString("color"));
				property.setP_Size(p_data.getString("p_size"));
				property.setP_Description(p_data.getString("p_description"));
				property.setStock(p_data.getInt("stock"));
				property.setListingDate(p_data.getString("listingDate"));
				property.setRating(p_data.getDouble("rating"));
				property.setStatus(p_data.getString("status"));
				property.setImagePath(p_data.getString("imagePath"));	
				
				dataInfo.add(property);
			}
		  } catch (SQLException e) {
            e.printStackTrace();
        }
		return dataInfo;
	
	}
	
		public DTO getProductById(String productId) { //매개변수 productId는 메소드 안에서만 사용
			DTO productById = null;
			
			 try {
			        String sql = "SELECT * FROM PRODUCT WHERE productId = ?";
			        PreparedStatement read_Detail = conn.prepareStatement(sql);
			        read_Detail.setString(1, productId);
			        ResultSet rs = read_Detail.executeQuery();

			        if (rs.next()) {
			          productById = new DTO();
			            productById.setProductId(rs.getString("productId"));
			            productById.setProductName(rs.getString("productName"));
			            productById.setPrice(rs.getInt("price"));
			            productById.setP_Category(rs.getString("p_category"));
			            productById.setColor(rs.getString("color"));
			            productById.setP_Size(rs.getString("p_size"));
			            productById.setP_Description(rs.getString("p_description"));
			            productById.setStock(rs.getInt("stock"));
			            productById.setListingDate(rs.getString("listingDate"));
			            productById.setRating(rs.getDouble("rating"));
			            productById.setStatus(rs.getString("status"));
			            productById.setImagePath(rs.getString("imagePath"));
			        }
			    } catch (SQLException e) {
			        e.printStackTrace();
			    }
			    return productById;
			}
	
	
	
	  public void add_product(DTO newProduct) { //상품 등록
	        String query = "INSERT INTO product (productId, productName, price, p_category, color, p_size, p_description, stock, listingDate, status,imagePath) "
	                      + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
	        	
	        try (PreparedStatement createData = conn.prepareStatement(query)) {
	           
	        	createData.setString(1, newProduct.getProductId());
	        	createData.setString(2, newProduct.getProductName());
	        	createData.setInt(3, newProduct.getPrice());
	        	createData.setString(4, newProduct.getP_Category());
	        	createData.setString(5, newProduct.getColor());
	        	createData.setString(6, newProduct.getP_Size());
	        	createData.setString(7, newProduct.getP_Description());
	        	createData.setInt(8, newProduct.getStock());
	        	createData.setString(9, newProduct.getListingDate());
	        	createData.setString(10, newProduct.getStatus());
	        	createData.setString(11, newProduct.getImagePath());

	            // (데이터베이스에 데이터 삽입)
	        	createData.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	       
	    }
	  
	 public boolean overlapped_P_ID(String p_value ) {
			boolean result;
			try {
				String query = "select decode(count(*),1,'true','false') as result from PRODUCT";
				 query += " where productId=?";
				 PreparedStatement pstmt = conn.prepareStatement(query);
				 pstmt.setString(1, p_value);
				 System.out.println("쿼리가 동작할 준비를 마쳤습니다.");
				 ResultSet rs = pstmt.executeQuery();
				 rs.next();
				 result =Boolean.parseBoolean(rs.getString("result"));
				 pstmt.close();
				 return result;
			} catch (Exception e) {
				e.printStackTrace();
				return false;
			}
			
		}
}
