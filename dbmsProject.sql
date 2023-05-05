 CREATE TABLE Cart
    (
        Cart_id VARCHAR(7) NOT NULL,
        PRIMARY KEY(Cart_id)
    );

    CREATE TABLE Customer
    (
        Customer_id VARCHAR(6) NOT NULL,
        c_pass VARCHAR(10) NOT NULL,
        Name VARCHAR(20) NOT NULL,
        Address VARCHAR(20) NOT NULL,
        Pincode NUMBER(6) NOT NULL,
        Phone_number_s number(10) NOT NULL,
        PRIMARY KEY (Customer_id),
        Cart_id VARCHAR(7) NOT NULL,
        FOREIGN KEY(Cart_id) REFERENCES Cart(Cart_id)
    );

    CREATE TABLE Seller1
    (
        Seller_id VARCHAR(6) NOT NULL,
        s_pass VARCHAR(10) NOT NULL,
        Name VARCHAR(20) NOT NULL,
        Address VARCHAR(10) NOT NULL,
        PRIMARY KEY (Seller_id)
    );

    CREATE TABLE Seller_Phone_num1
    (
        Phone_num NUMBER(10) NOT NULL,
        Seller_id VARCHAR(6) NOT NULL,
        PRIMARY KEY (Phone_num, Seller_id),
        FOREIGN KEY (Seller_id) REFERENCES Seller1(Seller_id)
        ON DELETE CASCADE
    );

    CREATE TABLE Payment
    (
        payment_id VARCHAR(7) NOT NULL,
        payment_date DATE NOT NULL,
        Payment_type VARCHAR(10) NOT NULL,
        Customer_id VARCHAR(6) NOT NULL,
        Cart_id VARCHAR(7) NOT NULL,
        PRIMARY KEY (payment_id),
        FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
        FOREIGN KEY (Cart_id) REFERENCES Cart(Cart_id),
        total_amount numeric(6)
    );

    CREATE TABLE Product
    (
        Product_id VARCHAR(7) NOT NULL,
        Type VARCHAR(7) NOT NULL,
        Color VARCHAR(15) NOT NULL,
        P_Size VARCHAR(2) NOT NULL,
        Gender CHAR(1) NOT NULL,
        Commission NUMBER(2) NOT NULL,
        Cost NUMBER(5) NOT NULL,
        Quantity NUMBER(2) NOT NULL,
        Seller_id VARCHAR(6),
        PRIMARY KEY (Product_id),
        FOREIGN KEY (Seller_id) REFERENCES Seller1(Seller_id)
        ON DELETE SET NULL
    );

    CREATE TABLE Cart_item
    (
        Quantity_wished NUMBER(1) NOT NULL,
        Date_Added DATE NOT NULL,
        Cart_id VARCHAR(7) NOT NULL,
        Product_id VARCHAR(7) NOT NULL,
        FOREIGN KEY (Cart_id) REFERENCES Cart(Cart_id),
        FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
        Primary key(Cart_id,Product_id)
    );

    alter table Cart_item2 add purchased2 varchar(3) default 'NO';
    
    
    
    insert into Cart values('CART001');
    insert into Cart values('CART002');
    insert into Cart values('CART003');
    insert into Cart values('CART004');
    insert into Cart values('CART005');
    insert into Cart values('CART006');
    insert into Cart values('CART007');
    insert into Cart values('CART008');
    insert into Cart values('CART009');66
    
    select * from Cart;
  /*======================CUSTOMER TABLE==========================*/
  
  select * from Customer;
INSERT INTO Customer (Customer_id, c_pass, Name, Address, Pincode, Phone_number_s,
Cart_id)
VALUES ('CUS001', 'password', 'John Doe', '123 Main Street', '123456', '1234567890',
'CART001');
INSERT INTO Customer (Customer_id, c_pass, Name, Address, Pincode, Phone_number_s,
Cart_id)
VALUES ('CUS002', 'password', 'Jane Doe', '456 Park Avenue', '789012', '0987654321',
'CART002');
INSERT INTO Customer (Customer_id, c_pass, Name, Address, Pincode, Phone_number_s,
Cart_id)
VALUES ('CUS003', 'password', 'Bob Smith', '789 Elm Street', '345678', '4567890123', 'CART003');
INSERT INTO Customer (Customer_id, c_pass, Name, Address, Pincode, Phone_number_s,
Cart_id)
VALUES ('CUS004', 'password', 'Alice Johnson', '234 Oak Road', '901234', '7890123456',
'CART004');
INSERT INTO Customer (Customer_id, c_pass, Name, Address, Pincode, Phone_number_s,
Cart_id)
VALUES ('CUS005', 'password', 'Sarah Wilson', '567 Pine Street', '567890', '2345678901',
'CART005');
INSERT INTO Customer (Customer_id, c_pass, Name, Address, Pincode, Phone_number_s,
Cart_id)
VALUES ('CUS006', 'password', 'Mike Davis', '890 Cedar Lane', '123789', '9012345678',
'CART006');
INSERT INTO Customer (Customer_id, c_pass, Name, Address, Pincode, Phone_number_s,
Cart_id)
VALUES ('CUS007', 'password', 'Jessica Brown', '1234 Spruce Street', '890123', '3456789012',
'CART007');
INSERT INTO Customer (Customer_id, c_pass, Name, Address, Pincode, Phone_number_s,
Cart_id)
VALUES ('CUS008', 'password', 'David Wilson', '5678 Oak Lane', '456789', '6789012345',
'CART008');
INSERT INTO Customer (Customer_id, c_pass, Name, Address, Pincode, Phone_number_s,
Cart_id)
VALUES ('CUS009', 'password', 'Emily Johnson', '9012 Maple Road', '123456', '3456789012',
'CART009');
    
    

ALTER TABLE Seller1 MODIFY s_pass VARCHAR2(30);
ALTER TABLE Seller1 MODIFY Name VARCHAR2(30);
ALTER TABLE Seller1 MODIFY Address VARCHAR2(30);
/*=========================seller==========================*/

select * from Seller1;

INSERT INTO Seller1 (Seller_id, s_pass, Name, Address) VALUES ('S10011',
'sellerpass1', 'John Doe', '123 Main St.');
INSERT INTO Seller1 (Seller_id, s_pass, Name, Address) VALUES ('S10012',
'sellerpass2', 'Jane Smith', '456 Oak St.');
INSERT INTO Seller1 (Seller_id, s_pass, Name, Address) VALUES ('S10013',
'sellerpass3', 'Bob Johnson', '789 Maple Ave.');
INSERT INTO Seller1 (Seller_id, s_pass, Name, Address) VALUES ('S10014',
'sellerpass4', 'Sarah Lee', '567 Pine St.');
INSERT INTO Seller1 (Seller_id, s_pass, Name, Address) VALUES ('S10015',
'sellerpass5', 'Michael Jordan', '321 Elm St.');
INSERT INTO Seller1 (Seller_id, s_pass, Name, Address) VALUES ('S10016',
'sellerpass6', 'Taylor Swift', '999 Broadway');
INSERT INTO Seller1 (Seller_id, s_pass, Name, Address) VALUES ('S10017',
'sellerpass7', 'Elon Musk', '111 Rocket Rd.');
INSERT INTO Seller1 (Seller_id, s_pass, Name, Address) VALUES ('S10018',
'sellerpass8', 'Bill Gates', '456 Microsoft Way');
INSERT INTO Seller1 (Seller_id, s_pass, Name, Address) VALUES ('S10019',
'sellerpass9', 'Jeff Bezos', '789 Amazon St.');



/*=========================seller_phonenumber==========================*/

select * from Seller_Phone_num1;
INSERT INTO Seller_Phone_num1 (Phone_num, Seller_id) VALUES (1234567890,
'S10011');
INSERT INTO Seller_Phone_num1 (Phone_num, Seller_id) VALUES (2345678901,
'S10012');
INSERT INTO Seller_Phone_num1 (Phone_num, Seller_id) VALUES (3456789012,
'S10013');
INSERT INTO Seller_Phone_num1 (Phone_num, Seller_id) VALUES (4567890123,
'S10014');
INSERT INTO Seller_Phone_num1 (Phone_num, Seller_id) VALUES (5678901234,
'S10015');
INSERT INTO Seller_Phone_num1 (Phone_num, Seller_id) VALUES (6789012345,
'S10016');
INSERT INTO Seller_Phone_num1 (Phone_num, Seller_id) VALUES (7890123456,
'S10017');
INSERT INTO Seller_Phone_num1 (Phone_num, Seller_id) VALUES (8901234567,
'S10018');
INSERT INTO Seller_Phone_num1 (Phone_num, Seller_id) VALUES (9012345678,
'S10019');

select * from Payment;

INSERT INTO Payment (payment_id, payment_date, Payment_type, Customer_id,
Cart_id, total_amount) VALUES ('PAY001', TO_DATE('2023-04-25', 'YYYY-MM-DD'), 'Credit', 'CUS001', 'CART001',
50.00);
INSERT INTO Payment (payment_id, payment_date, Payment_type, Customer_id,
Cart_id, total_amount) VALUES ('PAY002', TO_DATE('2023-04-02', 'YYYY-MM-DD'), 'Debit', 'CUS002', 'CART002',
100.00);
INSERT INTO Payment (payment_id, payment_date, Payment_type, Customer_id,
Cart_id, total_amount) VALUES ('PAY003', TO_DATE('2023-04-03', 'YYYY-MM-DD'), 'Cash', 'CUS003', 'CART003',
75.00);
INSERT INTO Payment (payment_id, payment_date, Payment_type, Customer_id,
Cart_id, total_amount) VALUES ('PAY004', TO_DATE('2023-04-04', 'YYYY-MM-DD'), 'Credit', 'CUS004', 'CART004',
25.00);
INSERT INTO Payment (payment_id, payment_date, Payment_type, Customer_id,
Cart_id, total_amount) VALUES ('PAY005', TO_DATE('2023-04-05', 'YYYY-MM-DD'), 'Debit', 'CUS005', 'CART005',
200.00);
INSERT INTO Payment (payment_id, payment_date, Payment_type, Customer_id,
Cart_id, total_amount) VALUES ('PAY006', TO_DATE('2023-04-06', 'YYYY-MM-DD'), 'Cash', 'CUS006', 'CART006',
150.00);
INSERT INTO Payment (payment_id, payment_date, Payment_type, Customer_id,
Cart_id, total_amount) VALUES ('PAY007', TO_DATE('2023-04-07', 'YYYY-MM-DD'), 'Credit', 'CUS007', 'CART007',
75.00);
INSERT INTO Payment (payment_id, payment_date, Payment_type, Customer_id,
Cart_id, total_amount) VALUES ('PAY008', TO_DATE('2023-04-08', 'YYYY-MM-DD'), 'Debit', 'CUS008', 'CART008',
50.00);
INSERT INTO Payment (payment_id, payment_date, Payment_type, Customer_id,
Cart_id, total_amount) VALUES ('PAY009', TO_DATE('2023-04-09', 'YYYY-MM-DD'), 'Cash', 'CUS001', 'CART009',
125.00);


select * from Product;

ALTER TABLE Product MODIFY P_Size VARCHAR2(20);
ALTER TABLE Product MODIFY GENDER VARCHAR2(10);
ALTER TABLE Product MODIFY SELLER_ID VARCHAR2(10);


INSERT INTO Product (Product_id, Type, Color, P_Size, Gender, Commission, Cost,
Quantity, Seller_id)
VALUES ('PROD001', 'Shirt', 'Blue', 'Medium', 'Male', 10.00, 25.00, 50, 'S10011');
INSERT INTO Product (Product_id, Type, Color, P_Size, Gender, Commission, Cost,
Quantity, Seller_id)
VALUES ('PROD002', 'Dress', 'Black', 'Small', 'Female', 15.00, 50.00, 25, 'S10012');
INSERT INTO Product (Product_id, Type, Color, P_Size, Gender, Commission, Cost,
Quantity, Seller_id)
VALUES ('PROD003', 'Shoes', 'Red', 'Large', 'Unisex', 5.00, 75.00, 10, 'S10013');
INSERT INTO Product (Product_id, Type, Color, P_Size, Gender, Commission, Cost,
Quantity, Seller_id)
VALUES ('PROD004', 'Jeans', 'Gray', 'Medium', 'Male', 12.50, 40.00, 30,
'S10012');
INSERT INTO Product (Product_id, Type, Color, P_Size, Gender, Commission, Cost,
Quantity, Seller_id)
VALUES ('PROD005', 'T-Shirt', 'Green', 'Large', 'Male', 7.50, 20.00, 100, 'S10011');
INSERT INTO Product (Product_id, Type, Color, P_Size, Gender, Commission, Cost,
Quantity, Seller_id)
VALUES ('PROD006', 'Sweater', 'White', 'Small', 'Female', 10.00, 60.00, 15,
'S10014');
INSERT INTO Product (Product_id, Type, Color, P_Size, Gender, Commission, Cost,
Quantity, Seller_id)
VALUES ('PROD007', 'Skirt', 'Yellow', 'Medium', 'Female', 20.00, 35.00, 20,
'S10013');
INSERT INTO Product (Product_id, Type, Color, P_Size, Gender, Commission, Cost,
Quantity, Seller_id)
VALUES ('PROD008', 'Jacket', 'Black', 'Large', 'Unisex', 15.00, 100.00, 5,
'S10015');
INSERT INTO Product (Product_id, Type, Color, P_Size, Gender, Commission, Cost,
Quantity, Seller_id)
VALUES ('PROD009', 'Pants', 'Brown', 'Small', 'Male', 7.50, 45.00, 20, 'S10016');


select * from Cart_item;

INSERT INTO Cart_item (Quantity_wished, Date_Added, Cart_id, Product_id) VALUES (1, TO_DATE('2023-04-25', 'YYYY-MM-DD'), 'CART003', 'PROD001');
INSERT INTO Cart_item (Quantity_wished, Date_Added, Cart_id, Product_id) VALUES (2, TO_DATE('2023-04-24', 'YYYY-MM-DD'), 'CART003', 'PROD003');
INSERT INTO Cart_item (Quantity_wished, Date_Added, Cart_id, Product_id) VALUES (1, TO_DATE('2023-04-23', 'YYYY-MM-DD'), 'CART004', 'PROD002');
INSERT INTO Cart_item (Quantity_wished, Date_Added, Cart_id, Product_id) VALUES (3, TO_DATE('2023-04-22', 'YYYY-MM-DD'), 'CART005', 'PROD004');
INSERT INTO Cart_item (Quantity_wished, Date_Added, Cart_id, Product_id) VALUES (2, TO_DATE('2023-04-21', 'YYYY-MM-DD'), 'CART001', 'PROD003');
INSERT INTO Cart_item (Quantity_wished, Date_Added, Cart_id, Product_id) VALUES (1, TO_DATE('2023-04-20', 'YYYY-MM-DD'), 'CART006', 'PROD006');
INSERT INTO Cart_item (Quantity_wished, Date_Added, Cart_id, Product_id) VALUES (1, TO_DATE('2023-04-19', 'YYYY-MM-DD'), 'CART008', 'PROD007');
INSERT INTO Cart_item (Quantity_wished, Date_Added, Cart_id, Product_id) VALUES (2, TO_DATE('2023-04-18', 'YYYY-MM-DD'), 'CART009', 'PROD008');
INSERT INTO Cart_item (Quantity_wished, Date_Added, Cart_id, Product_id) VALUES (1, TO_DATE('2023-04-17', 'YYYY-MM-DD'), 'CART007', 'PROD009');




/*-	If the customer wants to see details of product present in the cart:*/
    select * from Product where Product_id in
    (select product_id from Cart_item where (Cart_id in (select Cart_id from Customer where Customer_id='CUS001')));
    
    /*If a customer wants to see order history:*/
    select Product_id,Quantity_wished from Cart_item where ( Cart_id in (select Cart_id from Customer where Customer_id='CUS001'));


    /*-	Customer wants to see filtered products on the basis of size , gender,type:*/
    
    select Product_id, Color, Cost, Seller_id from Product where (Type='Pants' and
    P_size='Small' and Gender='Male' and Quantity>0);

    /*if customer wants to modify the cart:*/
    
    delete from Cart_item where (Product_id='PROD002' and Cart_id in (select Cart_id from Customer where Customer_id='CUS001'));
    
    /*If a seller stops selling his product:*/
    
    delete from Seller1 where Seller_id = 'S10013';
    update Product set Quantity = 00 where Seller_id is NULL;
    
   /*PL/SQL Functions:*/
   
   create or replace procedure cost_filter(c in number,t in varchar) is
   cs Product.cost%type; ty Product.type%type;
   id Product.Product_id%type; cursor cf is
   select Product_id,cost,type from Product where cost<c and type=t; begin
   open cf; loop
   fetch cf into id,cs,ty; exit when cf%notfound;
   dbms_output.put_line('Product' || id || 'has cost ' || cs || ' and the type is' || ty); end loop;
   close cf; exception
   when no_data_found then dbms_output.put_line('Sorry no such products exist');
   end;

   begin
   cost_filter(c => 50, t => 'Shirt');
   end;

   /*Function which returns total number of products which a particular seller sells:*/
   create or replace function totalProducts(sId in varchar)
   return number is
   total number(2):=0; begin
   select count(*) into total from Product
   where Seller_id=sId; 
   return total;
   end;

  /*- Procedure which returns the total quantity of product with the given ID:*/
  create or replace procedure prod_details(P_id in varchar)
  is
  quan number(2); begin
  select quantity into quan from Product where Product_id=P_id; 
  
  exception
  when no_data_found then 
  dbms_output.put_line('Sorry no such product exist !!'); 
  end;

/*•	 Triggers
-  Function to count number of cart items:
*/

create OR REPLACE FUNCTION numCartId(cd IN VARCHAR) RETURN NUMBER
IS
total NUMBER(2) := 0; BEGIN
SELECT COUNT(*) INTO total
FROM Cart_item WHERE Cart_id = cd;

RETURN total; END;


CREATE OR REPLACE TRIGGER before_customer BEFORE INSERT ON Customer
FOR EACH ROW DECLARE
c VARCHAR(10); n NUMBER(2);
BEGIN
c := :new.Cart_id; n := numCartId(c);

IF n > 0 THEN
dbms_output.put_line('Sorry');
END IF;

INSERT INTO Cart VALUES (c);
END;
GRANT CREATE TABLE, CREATE TRIGGER, CREATE VIEW TO <Cart>;
SELECT owner FROM all_objects WHERE object_name = '<object_name>';
SELECT username FROM dba_users WHERE username = '<sys>';




create or replace function total_cost(cId in varchar)
return number is
total number(2) :=0; begin
select sum(cost) into total from Product,Cart_item where Product.Product_id=Cart_item.Product_id and Cart_id=cId;
return total; end;

 create or replace trigger before_pay_up
    before insert
    on
    Payment
    for each row
    declare
    total number(3);
    begin
    total :=total_cost(:new.cart_id);
    insert into Payment values(:new.payment_id,:new.payment_date,:new.payment_type,:new.Customer_id,:new.Cart_id,total);
    end;


