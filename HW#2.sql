{\rtf1\ansi\ansicpg1252\cocoartf2708
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica-Bold;}
{\colortbl;\red255\green255\blue255;\red251\green2\blue7;\red0\green0\blue0;\red5\green68\blue254;
\red5\green61\blue204;}
{\*\expandedcolortbl;;\cssrgb\c100000\c14913\c0;\cssrgb\c0\c0\c0;\cssrgb\c0\c38136\c99824;
\cssrgb\c0\c33896\c83855;}
\margl1440\margr1440\vieww14220\viewh14720\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\b\fs24 \cf0 CREATE TABLE Customer(\
cus_code int primary key not null,\
cus_lname varchar(20),\
cus_fname varchar(20),\
cus_initial char,\
cus_areacode int,\
cus_phone int\
);\
\
CREATE TABLE Invoice(\
inv_number int primary key not null,\
cus_code int ,\
inv_date DATE,\
foreign key (cus_code) references Customer(cus_code)\
);\
\cf2 \
\cf0 CREATE TABLE Vendor(\
vend_code int primary key not null,\
vend_name varchar(30),\
vend_contact varchar(30),\
vend_areacode int,\
vend_phone int\
);\
\
CREATE TABLE Product(\
prod_code int primary key not null,\
prod_desc varchar(50),\
prod_price int,\
prod_quant int,\
vend_code int,\
foreign key (vend_code) references Vendor(vend_code)\
);\
\cf3 \
CREATE TABLE Line(\
inv_number int primary key,\
prod_code int, \
line_units int,\
foreign key (inv_number) references Invoice(inv_number),\
foreign key (prod_code) references Product (prod_code) );\
\cf0 \
\
\
\
INSERT INTO Customer \
  (cus_code,cus_lname,cus_fname,cus_initial,cus_areacode,cus_phone) \
VALUES \
  (10010,'Ramas','Paul','A',615,8442573),\
  (10011,'Dunne','Leona','K',713,8941238),\
  (10012,'Smith','Kathy','W',615,8942285),\
  (10013,'Olowski','Paul','F',615,2221672),\
  (10014,'Orlando','Myron',NULL,615,2971228);\
\
\
\
INSERT INTO Invoice \
  (inv_number,cus_code,inv_date) \
VALUES \
  (1001,10011,'2018-01-03'),\
  (1002,10014,'2016-08-04'),\
  (1003,10012,'2017-03-20'),\
  (1004,10014,'2018-01-13');\
\
INSERT INTO Vendor \
  (vend_code,vend_name,vend_contact,vend_areacode,vend_phone) \
VALUES \
  (232,'Bryson','Smith',615,2233234),\
  (235,'SuperLoo','Anderson',615,2158995),\
  (236,'Brett','Manko',612,3458695);\
\
INSERT INTO Product \
  (prod_code,prod_desc,prod_price,prod_quant,vend_code ) \
VALUES \
  (12321,'hammer',189,20,232),\
  (65781,'chain',12,45,235),\
  (34256,'tape',35,60,235),\
  (83456,'saw',165,15,236),\
  (12333,'hanger',200,10,232);\cf4 \
\cf3 \
INSERT INTO Line \
  (inv_number,prod_code,line_units) \
VALUES \
  (1001,12321,1),\
  (1003,83456,2),\
  (1002,34256,6);\
\
\cf4 \
INSERT INTO Customer\cf0  \cf4 (cus_code,cus_lname,cus_fname,cus_initial,cus_areacode,cus_phone) \
VALUES (10011,\'92Juan\'92, \'91Rodriguez\'92, \'91J\'92,612, 7788776);\
\pard\pardeftab720\partightenfactor0
\cf0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf5 INSERT INTO Invoice \
  (inv_number,cus_code,inv_date) \
VALUES \
  (1005,10012,\'922017-11-30\'92);\
\
INSERT INTO Product \
  (prod_code,prod_desc,prod_price,prod_quant,vend_code ) \
VALUES \
  (12321,'nail', 9, 23, 236);\
\
\
INSERT INTO Vendor \
  (vend_code,vend_name,vend_contact,vend_areacode,vend_phone) \
VALUES \
  (231,\'92Adam\'92,\'92Eric\'92, 615, 2158995);\
\
INSERT INTO Product \
  (prod_code,prod_desc,prod_price,prod_quant,vend_code ) \
VALUES \
  (12322,\'92coil\'92,189, 20, 237);}