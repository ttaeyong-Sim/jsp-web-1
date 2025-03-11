package model;

import java.util.ArrayList;

/*import model.DTO; 패키지가 같은위치라 임포트할 필요없긴한데
 * 혹시 나중에 다른패키지에서 DTO클래스 생성해놓고 왜 안되나 방황할때 이거 확인하라고 써놓음*/ 

public class DAO { //이 클래스는 디비연동 이전에 다뤘던 클래스로 데이터 관리에 용이하지않다
	private ArrayList<DTO> dataInfo = new ArrayList<DTO>();
	private static DAO instance = new DAO();

	public static DAO getInstance() {
	 return instance;
	}
	
	public DAO() {
		DTO data1 = new DTO("STY0010","심플라운드티",14000);
		data1.setP_Category("T-shirts");
		data1.setColor("Gray, Black");
		data1.setP_Size("XL");
		data1.setP_Description("편안하고 세련된 디자인이 특징입니다. 부드러운 면 소재로 제작되어 착용감이 우수하며, 다양한 스타일에 잘 어울립니다. 캐주얼한 룩부터 조금 더 격식 있는 스타일까지, 여러 가지로 활용 가능한 아이템입니다.");
		data1.setStock(2);
		data1.setListingDate("2024-11-27"); // 등록일
		data1.setImagePath("images/T-shirts.jpg");
		data1.setRating(4.5);
		data1.setStatus("품절");
		
		DTO data2 = new DTO("STY1011","블루베이셔츠",34000);
		data2.setP_Category("Shirts");
		data2.setColor("Sky blue");
		data2.setP_Size("XL");
		data2.setP_Description("시원하고 상쾌한 색감이 돋보입니다. 가벼운 소재로 제작되어 여름철에 시원하게 입을 수 있으며, 다양한 하의와 매치하기 좋습니다. 깔끔한 디자인으로 데일리 룩은 물론, 캐주얼한 모임에서도 적합한 아이템입니다.");
		data2.setStock(4);
		data2.setListingDate("2024-11-27");
		data2.setImagePath("images/shirts.jpg");
		data2.setRating(4.5);
		data2.setStatus("품절");
		
		DTO data3 = new DTO("STY2001","선셋 니트",32800);
		data3.setP_Category("Knit");
		data3.setColor("Golden Orange");
		data3.setP_Size("Free");
		data3.setP_Description("따뜻하고 부드러운 소재로 제작되어 편안한 착용감을 제공합니다. 프리사이즈로 다양한 체형에 어울리며, 고급스러운 골든 오렌지 색상으로 포인트 있는 스타일링이 가능합니다. 겨울철 따뜻하게 입을 수 있는 세련된 아이템입니다.");
		data3.setStock(6);
		data3.setListingDate("2024-11-27");
		data3.setImagePath("images/Knit.JPG");
		data3.setRating(4.5);
		data3.setStatus("품절");
		
		DTO data4 = new DTO("STY3001","더블링 후드티",42000);
		data4.setP_Category("Hoodies");
		data4.setColor("Red");
		data4.setP_Size("Free");
		data4.setP_Description("편안한 착용감과 함께 스포티한 분위기를 연출해줍니다. 자유로운 활동이 가능한 디자인으로 데일리 아이템으로 적합하며,소프트한 소재로 겨울철에도 따뜻하게 입을 수 있는 필수 아이템입니다.");
		data4.setStock(3);
		data4.setListingDate("2024-11-27");
		data4.setImagePath("images/Hoodies.jpg");
		data4.setRating(4.5);
		data4.setStatus("품절");
		
		DTO data5 = new DTO("STY4001","스포티 크루 자켓",29500);
		data5.setP_Category("Jackets");
		data5.setColor("Blue");
		data5.setP_Size("L,XL");
		data5.setP_Description("고급스러운 느낌의 소재와 뛰어난 내구성으로 다양한 상황에서 활용 가능하며, 시원하고 깔끔한 이미지를 강조합니다. 겨울철에도 따뜻하게 착용할 수 있는 이상적인 자켓입니다.");
		data5.setStock(3);
		data5.setListingDate("2024-11-27");
		data5.setImagePath("images/Jackets.jpg");
		data5.setRating(4.5);
		data5.setStatus("품절");
		
		DTO data6 = new DTO("STY5001","페어리 코트",34000);
		data6.setP_Category("Coats");
		data6.setColor("Pink");
		data6.setP_Size("S,M");
		data6.setP_Description("여성스럽고 부드러운 색감으로, 겨울철에도 따뜻하고 스타일리시하게 착용할 수 있습니다. 고급스러운 소재와 안감이 보온성을 높여주며, 다양한 룩에 매치하기 좋은 아이템입니다. 클래식한 디자인으로 오랫동안 사랑받을 수 있는 코트입니다.");
		data6.setStock(2);
		data6.setListingDate("2024-11-27");
		data6.setImagePath("images/Coats.jpg");
		data6.setRating(4.5);
		data6.setStatus("품절");
		
		DTO data7 = new DTO("STY6001","클래식 루프",34000);
		data7.setP_Category("Accessories");
		data7.setColor("Brown");
		data7.setP_Size("40mm/10mm");
		data7.setP_Description("세련된 디자인과 고급스러운 가죽 스트랩으로 클래식한 매력을 더합니다. 튼튼하고 내구성이 좋은 소재로 제작되어 일상적인 사용에 적합하며, 어떤 스타일에도 잘 어울립니다. 심플하면서도 세련된 룩을 완성해주는 필수 아이템입니다.");
		data7.setStock(7);
		data7.setListingDate("2024-11-27");
		data7.setImagePath("images/Accessories.JPG");
		data7.setRating(4.5);
		data7.setStatus("품절");
		
		DTO data8 = new DTO("STY7001","모던 슬림 슬렉스", 31000);
		data8.setP_Category("Shorts");
		data8.setColor("Brown, Beige, Ivory");
		data8.setP_Size("S,M");
		data8.setP_Description("아이보리와 베이지 색조의 이 여성 슬렉스는 우아하면서도 편안한 착용감을 자랑합니다. 부드러운 원단과 슬림한 실루엣이 몸매를 자연스럽게 강조하며, 다양한 상의와 쉽게 매치할 수 있어 스타일에 구애받지 않습니다. 일상적인 활동은 물론, 특별한 자리에서도 고급스러운 느낌을 완성해주는 완벽한 선택입니다.");
		data8.setStock(4);
		data8.setListingDate("2024-11-27");
		data8.setImagePath("images/Shorts.jpg");
		data8.setRating(4.5);
		data8.setStatus("품절");
		
		DTO data9 = new DTO("STY8001","세이지 레더백",134000);
		data9.setP_Category("bags");
		data9.setColor("Green");
		data9.setP_Size("40cm x 30cm x 12cm");
		data9.setP_Description("고급스러운 색상과 함께, 스타일리시하면서도 실용성을 갖춘 디자인이 특징입니다. 손잡이와 연결된 세부 장식이 가방에 개성을 더해 주어, 어떤 룩에도 화려함을 더해주는 아이템입니다.");
		data9.setStock(2);
		data9.setListingDate("2024-11-27");
		data9.setImagePath("images/bags.JPG");
		data9.setRating(4.5);
		data9.setStatus("품절");
		
		DTO data10 = new DTO("STY9001","퓨어 액티브 슈즈",78000);
		data10.setP_Category("shoes");
		data10.setColor("White");
		data10.setP_Size("270mm");
		data10.setP_Description("편안함과 가벼움을 극대화한 디자인으로, 하루 종일 신어도 부담 없이 착용 가능합니다. 부드러운 소재와 충격 흡수 기능이 뛰어나, 장시간 활동에도 발에 피로감을 덜어줍니다. 깔끔한 화이트 컬러는 다양한 스타일과 잘 어울려 데일리로 활용하기에 완벽한 아이템입니다.");
		data10.setStock(1);
		data10.setListingDate("2024-11-27");
		data10.setImagePath("images/shoes.JPG");
		data10.setRating(4.5);
		data10.setStatus("품절");
		
		
		
		dataInfo.add(data1);
		dataInfo.add(data2);
		dataInfo.add(data3);
		dataInfo.add(data4);
		dataInfo.add(data5);
		dataInfo.add(data6);
		dataInfo.add(data7);
		dataInfo.add(data8);
		dataInfo.add(data9);
		dataInfo.add(data10);
		
	}
	public void add_product(DTO newData) { 
		dataInfo.add(newData);
		//▲process_add_product.jsp에서 add_product 메소드 실행 new_Product 데이타 DTO newDate로넘어옴
		//System.out.println(newData); //추가한 상품의 데이타정보
	}
		public ArrayList<DTO> getALLData() {
			return dataInfo;
		}
		
		public DTO getProductById(String productId) { //연구
			DTO productById = null;
			
			for (int i=0; i < dataInfo.size(); i++) {
				DTO dto = dataInfo.get(i);
				if(dto!=null&&dto.getProductId()!=null&& dto.getProductId().equals(productId)) {
					productById = dto;
					break;
				}
			}
			return productById;
		}
		
	
	
}
