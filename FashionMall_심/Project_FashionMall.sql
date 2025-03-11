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
VALUES ('STY0010', '���ö���Ƽ', 14000,'T-shirts','Gray, Black','XL',
'����ϰ� ���õ� �������� Ư¡�Դϴ�. �ε巯�� �� ����� ���۵Ǿ� ���밨�� ����ϸ�, 
�پ��� ��Ÿ�Ͽ� �� ��︳�ϴ�. ĳ�־��� ����� ���� �� �ݽ� �ִ� ��Ÿ�ϱ���,
���� ������ Ȱ�� ������ �������Դϴ�.'
,2,'2024-11-27','�Ǹ���','T-shirts.jpg');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY1011', '��纣�̼���', 34000,'Shirts','Sky blue','XL',
'�ÿ��ϰ� ������ ������ �����Դϴ�.
������ ����� ���۵Ǿ� ����ö�� �ÿ��ϰ� ���� �� ������,
�پ��� ���ǿ� ��ġ�ϱ� �����ϴ�.
����� ���������� ���ϸ� ���� ����, ĳ�־��� ���ӿ����� ������ �������Դϴ�.'
,4,'2024-11-27','�Ǹ���','shirts.jpg');


INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY2001', '���� ��Ʈ', 32000,'Knit','Golden Orange','Free',
'�����ϰ� �ε巯�� ����� ���۵Ǿ� ����� ���밨�� �����մϴ�.
����������� �پ��� ü���� ��︮��,
��޽����� ��� ������ �������� ����Ʈ �ִ� ��Ÿ�ϸ��� �����մϴ�.'
,2,'2024-11-27','�Ǹ���','Knit.JPG');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY3001', '���� �ĵ�Ƽ', 42000,'Hoodies','Red','Free',
'����� ���밨�� �Բ� ����Ƽ�� �����⸦ �������ݴϴ�.
�����ο� Ȱ���� ������ ���������� ���ϸ� ���������� �����ϸ�,
����Ʈ�� ����� �ܿ�ö���� �����ϰ� ���� �� �ִ� �ʼ� �������Դϴ�.'
,3,'2024-11-27','�Ǹ���','Hoodies.jpg');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY4001', '����Ƽ ũ�� ����', 29500,'Jackets','Blue','XL',
'��޽����� ������ ����� �پ ���������� �پ��� ��Ȳ���� Ȱ�� �����ϸ�,
�ÿ��ϰ� ����� �̹����� �����մϴ�.
�ܿ�ö���� �����ϰ� ������ �� �ִ� �̻����� �����Դϴ�.'
,2,'2024-11-27','�Ǹ���','Jackets.jpg');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY5001', '�� ��Ʈ', 34000,'Coats','Pink','M',
'���������� �ε巯�� ��������, �ܿ�ö���� �����ϰ� ��Ÿ�ϸ����ϰ� ������ �� �ֽ��ϴ�.
��޽����� ����� �Ȱ��� ���¼��� �����ָ�, �پ��� �迡 ��ġ�ϱ� ���� �������Դϴ�.
Ŭ������ ���������� �������� ������� �� �ִ� ��Ʈ�Դϴ�.'
,5,'2024-11-27','�Ǹ���','Coats.jpg');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY6001', 'Ŭ���� ����', 34000,'Accessories','Brown','40mm/10mm',
'���õ� �����ΰ� ��޽����� ���� ��Ʈ������ Ŭ������ �ŷ��� ���մϴ�.
ưư�ϰ� �������� ���� ����� ���۵Ǿ� �ϻ����� ��뿡 �����ϸ�,
� ��Ÿ�Ͽ��� �� ��︳�ϴ�. �����ϸ鼭�� ���õ� ���� �ϼ����ִ� �ʼ� �������Դϴ�.'
,1,'2024-11-27','�Ǹ���','Accessories.JPG');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY7001', '��� ���� ������', 31000,'Shorts','Brown, Beige, Ivory','S,M',
'���̺����� ������ ������ �� ���� �������� ����ϸ鼭�� ����� ���밨�� �ڶ��մϴ�.
�ε巯�� ���ܰ� ������ �Ƿ翧�� ���Ÿ� �ڿ������� �����ϸ�,
�پ��� ���ǿ� ���� ��ġ�� �� �־� ��Ÿ�Ͽ� ���ֹ��� �ʽ��ϴ�. 
�ϻ����� Ȱ���� ����, Ư���� �ڸ������� ��޽����� ������ �ϼ����ִ� �Ϻ��� �����Դϴ�.'
,6,'2024-11-27','�Ǹ���','Shorts.jpg');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY8001', '������ ������', 134000,'bags','Green','40cm x 30cm x 12cm',
'��޽����� ����� �Բ�, ��Ÿ�ϸ����ϸ鼭�� �ǿ뼺�� ���� �������� Ư¡�Դϴ�.
�����̿� ����� ���� ����� ���濡 ������ ���� �־�,
� �迡�� ȭ������ �����ִ� �������Դϴ�.'
,1,'2024-11-27','�Ǹ���','bags.JPG');

INSERT INTO PRODUCT (productId,productName,price,p_category,color,p_size,
p_description,stock,listingDate,status,imagePath)
VALUES ('STY9001', 'ǻ�� ��Ƽ�� ����', 78000,'shoes','White','270mm',
'����԰� �������� �ش�ȭ�� ����������, �Ϸ� ���� �ž �δ� ���� ���� �����մϴ�.
�ε巯�� ����� ��� ��� ����� �پ, ��ð� Ȱ������ �߿� �Ƿΰ��� �����ݴϴ�.
����� ȭ��Ʈ �÷��� �پ��� ��Ÿ�ϰ� �� ���� ���ϸ��� Ȱ���ϱ⿡ �Ϻ��� �������Դϴ�.'
,3,'2024-11-27','�Ǹ���','shoes.JPG');
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