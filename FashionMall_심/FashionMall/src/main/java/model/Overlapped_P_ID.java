package model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Overlapped_P_ID
 */
@WebServlet("/overlapped_P_ID")
public class Overlapped_P_ID extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Overlapped_P_ID() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		 response.setContentType("text/html; charset=utf-8");
		 PrintWriter writer = response.getWriter(); 
		 /*▲response.getWriter();서버가 클라이언트한테 텍스트를 출력해주는 도구라고 생각하기, 해당변수가 writer인걸 확인할것 지정한 변수 .print() or println()으로 출력*/
		 String p_value = (String) request.getParameter("productId_key"); //-> ajax를 이용한 json 데이터를 받아와서 스트링형으로 변환후 변수에 저장
		 System.out.println("productId_key = " + p_value);
		
		 /* 
	     ▼ DAO_SQL 클래스의 싱글톤 인스턴스를 가져옴
	      getInstance() 메서드를 통해 하나의 객체만 생성
	      여러 번 재사용할 수 있음
		 */
		 DAO_SQL dao_sql = DAO_SQL.getInstance();
		 	
		 boolean overlapped_P_ID_result = dao_sql.overlapped_P_ID(p_value); //--> overlappedID변수에 DAO불리안 메소드 결과값을 집어넣음 
			 if (overlapped_P_ID_result == true) { //중복되었다는 의미고
			 writer.print("not_usable");
			 } else {  //사용가능하다는것
			 writer.print("usable");
			 }
		}
	}


