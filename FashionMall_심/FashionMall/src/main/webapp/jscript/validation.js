	

function Check_AddProduct() {
	var productId = document.getElementById("productId");
	var productName  = document.getElementById("productName");
	var price = document.getElementById("price");
	//var p_category = document.getElementById("p_category");
	var color = document.getElementById("color");
	var p_size = document.getElementById("p_size");
	var p_description = document.getElementById("p_description");
	var stock = document.getElementById("stock");
	var listingDate = document.getElementById("listingDate");
	//var status = document.getElementById("status");
	var imagePath = document.getElementById("imagePath");
	
	//상품고유번호 체크 ===========================================
	if (productId.value.length == "") {
		alert("[상품코드]\n상품코드를 입력하세요");
		productId.focus();
		return false;
	}
	if (!check(
		/^STY[0-9]{1,9}$/, 
		 productId,
		 "[상품 코드]\nSTY와 숫자를 조합하여 4~12자까지 입력하세요\n첫 글자는 반드시 STY로 시작하세요"
		 )) {
	return false;
	}
	//상품명 체크=================================================
	if (productName.value.length == "") {
		alert("[상품명]\n상품명을 입력하세요");
		productName.focus();
		return false;
	}
	if (productName.value.length < 2 || productName.value.length > 50) {
		alert("[상품명]\n최소 2자에서 최대 50자까지 입력하세요");
		productName.focus();
		return false;
	}
	//상품가격 체크=================================================
	if (price.value.length == "") {
		alert("[상품가격]\n상품가격을 입력하세요");
		price.focus();
		return false;
	}
	if (price.value < 0) {
		alert("[가격]\n 음수를 입력할 수 없습니다.");
		price.focus();
		return false;
	}
	//컬러 체크====================================================
	if (color.value.length == "") {
		alert("[색상]\n상품색상을 입력하세요");
		color.focus();
		return false;
	}	
	//사이즈 체크=====================================================
	if (p_size.value.length == "") {
		alert("[사이즈]\n사이즈를 입력하세요");
		p_size.focus();
		return false;
	}
	//상품설명 체크====================================================
	if (p_description.value.length == "") {
		alert("[내용]\n상품내용을 입력하세요");
		p_description.focus();
		return false;
	}
	if (p_description.value.length < 10) {
		alert("[상세설명]\n최소 10자 이상 입력하세요");
		p_description.focus();
		return false;
	}
	//재고 수 체크=====================================================
	if (stock.value.length == "") {
		alert("[재고]\n재고수량을 입력하세요");
		stock.focus();
		return false;
	}
	if (isNaN(stock.value)) {
		alert("[재고 수 타입]\n숫자만 입력하세요");
		stock.focus();
		return false;
	}
	//날짜 입력 체크====================================================
	if (listingDate.value.length == "") {
		alert("[날짜]\n상품의 등록날짜를 지정해주세요");
		listingDate.focus();
		return false;
	}
	//이미지 체크========================================================
	if (imagePath.value.length == "") {
		alert("[이미지]\n상품의 이미지를 등록해주세요");
		imagePath.focus();
		return false;
	}
	if (!p_id_check) {
	        alert("상품코드 중복확인이 필요합니다.");
	        return false; //  아이디가 중복되면 가입못하게 막기.
	    } else {
			p_id_check = true;
		}
	
	function check(regExp, e, msg) {
		if(regExp.test(e.value)) {
		return true;
	}
	alert(msg);
	e.focus();
	return false;	
	}
		document.newProduct.submit();
	alert("상품이 등록되었습니다.");
	}
	

		