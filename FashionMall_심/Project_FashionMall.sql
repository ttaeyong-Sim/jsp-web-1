CREATE TABLE PRODUCT (
productId VARCHAR2(50) PRIMARY KEY,
productName VARCHAR2(100), 
price NUMBER(20,2),
p_category VARCHAR2(100),
color VARCHAR2(50),
p_size VARCHAR2(20),
p_description VARCHAR2(1000),
stock NUMBER(10),
listingDate VARCHAR2(100),
rating NUMBER(3,2),
status VARCHAR2(10),
imagePath VARCHAR2(1000)
);
INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY0010', '심플라운드티', 14000,'T-shirts','Gray, Black','XL',
'편안하고 세련된 디자인이 특징입니다. 부드러운 면 소재로 제작되어 착용감이 우수하며, 
다양한 스타일에 잘 어울립니다. 캐주얼한 룩부터 조금 더 격식 있는 스타일까지,
여러 가지로 활용 가능한 아이템입니다.'
,2,'2024-11-27','판매중','T-shirts.jpg');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY1011', '블루베이셔츠', 34000,'Shirts','Sky blue','XL',
'시원하고 상쾌한 색감이 돋보입니다.
가벼운 소재로 제작되어 여름철에 시원하게 입을 수 있으며,
다양한 하의와 매치하기 좋습니다.
깔끔한 디자인으로 데일리 룩은 물론, 캐주얼한 모임에서도 적합한 아이템입니다.'
,4,'2024-11-27','판매중','shirts.jpg');


INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY2001', '선셋 니트', 32000,'Knit','Golden Orange','Free',
'따뜻하고 부드러운 소재로 제작되어 편안한 착용감을 제공합니다.
프리사이즈로 다양한 체형에 어울리며,
고급스러운 골든 오렌지 색상으로 포인트 있는 스타일링이 가능합니다.'
,2,'2024-11-27','판매중','Knit.JPG');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY3001', '더블링 후드티', 42000,'Hoodies','Red','Free',
'편안한 착용감과 함께 스포티한 분위기를 연출해줍니다.
자유로운 활동이 가능한 디자인으로 데일리 아이템으로 적합하며,
소프트한 소재로 겨울철에도 따뜻하게 입을 수 있는 필수 아이템입니다.'
,3,'2024-11-27','판매중','Hoodies.jpg');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY4001', '스포티 크루 자켓', 29500,'Jackets','Blue','XL',
'고급스러운 느낌의 소재와 뛰어난 내구성으로 다양한 상황에서 활용 가능하며,
시원하고 깔끔한 이미지를 강조합니다.
겨울철에도 따뜻하게 착용할 수 있는 이상적인 자켓입니다.'
,2,'2024-11-27','판매중','Jackets.jpg');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY5001', '페어리 코트', 34000,'Coats','Pink','M',
'여성스럽고 부드러운 색감으로, 겨울철에도 따뜻하고 스타일리시하게 착용할 수 있습니다.
고급스러운 소재와 안감이 보온성을 높여주며, 다양한 룩에 매치하기 좋은 아이템입니다.
클래식한 디자인으로 오랫동안 사랑받을 수 있는 코트입니다.'
,5,'2024-11-27','판매중','Coats.jpg');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY6001', '클래식 루프', 34000,'Accessories','Brown','40mm/10mm',
'세련된 디자인과 고급스러운 가죽 스트랩으로 클래식한 매력을 더합니다.
튼튼하고 내구성이 좋은 소재로 제작되어 일상적인 사용에 적합하며,
어떤 스타일에도 잘 어울립니다. 심플하면서도 세련된 룩을 완성해주는 필수 아이템입니다.'
,1,'2024-11-27','판매중','Accessories.JPG');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY7001', '모던 슬림 슬렉스', 31000,'Shorts','Brown, Beige, Ivory','S,M',
'아이보리와 베이지 색조의 이 여성 슬렉스는 우아하면서도 편안한 착용감을 자랑합니다.
부드러운 원단과 슬림한 실루엣이 몸매를 자연스럽게 강조하며,
다양한 상의와 쉽게 매치할 수 있어 스타일에 구애받지 않습니다. 
일상적인 활동은 물론, 특별한 자리에서도 고급스러운 느낌을 완성해주는 완벽한 선택입니다.'
,6,'2024-11-27','판매중','Shorts.jpg');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY8001', '세이지 레더백', 134000,'bags','Green','40cm x 30cm x 12cm',
'고급스러운 색상과 함께, 스타일리시하면서도 실용성을 갖춘 디자인이 특징입니다.
손잡이와 연결된 세부 장식이 가방에 개성을 더해 주어,
어떤 룩에도 화려함을 더해주는 아이템입니다.'
,1,'2024-11-27','판매중','bags.JPG');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY9001', '퓨어 액티브 슈즈', 78000,'shoes','White','270mm',
'편안함과 가벼움을 극대화한 디자인으로, 하루 종일 신어도 부담 없이 착용 가능합니다.
부드러운 소재와 충격 흡수 기능이 뛰어나, 장시간 활동에도 발에 피로감을 덜어줍니다.
깔끔한 화이트 컬러는 다양한 스타일과 잘 어울려 데일리로 활용하기에 완벽한 아이템입니다.'
,3,'2024-11-27','판매중','shoes.JPG');
SELECT * FROM PRODUCT;

commit;

DESC product;
--ALTER TABLE PRODUCT
--MODIFY listingDate DATE;

UPDATE product
    SET p_size = '40cm*30cm*12cm'
    WHERE productId = 'STY8001';

drop table product;
delete from product
where productid = 'STY101012';