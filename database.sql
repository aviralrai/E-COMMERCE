#drop database ecommerce;
#create database ecommerce;
use ecommerce;
/*line above will vary with user*/
create table user (userid int not NULL auto_increment,fullname varchar(50),username varchar(30),usertype varchar(10),password varchar(40),primary key(userid),UNIQUE(username));
alter table user auto_increment=100;

create table items (itemid int not NULL auto_increment,itemname varchar(100),seller varchar(30),price decimal(12,2),rating decimal(2,1),details varchar(1000),link varchar(1000),primary key(itemid));
alter table items auto_increment=200;



insert into user (fullname,username,usertype,password) values
	("Aviral Rai","aviralrai","customer","aviral"),
	("Bazif Rasool","darthvader","customer","bazif"),
	("Krishna Kumar Sutar","jonsnow","customer","krishna"),
	("Shiv Shankar","shivshankar","retailer","shiv"),
	("Samarth Vats","awesamness","retailer","samarth"),
	("Saumya Prakash","samvirus","retailer","saumya"),
	("Firoz Mohammad","firozmd","customer","firoz"),
	("Amar Kumar","amarkmr","customer","amar");

select * from user;

insert into items (itemname,seller,price,rating,details,link) values
	("MI Note 5 Pro","Saumya Prakash",15000,4.6,"4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) Full HD+ Display | 12MP + 5MP | 20MP Front Camera | 4100 mAh Battery | Qualcomm Snapdragon 636 Processor ","https://images-na.ssl-images-amazon.com/images/I/51N7nR%2BYarL._SX679_.jpg"),
	("Iphone Xs","Samarth Vats",150000,3.6,"64 GB ROM | 14.73 cm (5.8 inch) Super Retina HD Display | 12MP + 12MP | 7MP Front Camera | A12 Bionic Chip Processor","https://i.gadgets360cdn.com/products/large/1536782640_635_iphone_xs.jpg"),
	("Realme 3","Shiv Shankar",10999,4.5,"4 GB RAM | 64 GB ROM | 15.8 cm (6.22 inch) HD+ Display | 13MP + 2MP | 13MP Front Camera | 4230 mAh Battery | MediaTek Helio P70 Octa Core 2.1 GHz AI Processor ","https://www.91-cdn.com/pricebaba-images/images/product/mobile/60023/realme-3-raw-212436.jpg"),
	("EZAR 3.0 M Running Shoes For Men (Navy)","Saumya Prakash",2149,3.9,NULL,"https://rukminim1.flixcart.com/image/880/1056/j612c280/shoe/y/z/a/ezar-3-0-m-8-adidas-tecste-silvmt-shosli-original-imaewh7h7ankd5nw.jpeg?q=50"),
	("Samsung 192 L Direct Cool Refrigerator","Shiv Shankar",16290,4.5,"192.0 L : Good for couples and small families | Digital Inverter Compressor | 5 Star : For Energy savings up to 55%","https://static.digit.in/product/98ffaa527db3ccaf796b56e6b29225c005571239.jpeg"),
	("Acer Predator Helios 300 Core i5 8th Gen","Samarth Vats",68900,4.3,"NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance | 15.6 inch Full HD LED Backlit IPS Display | Light Laptop without Optical Disk Drive | Pre-installed Genuine Windows 10 OS | Preloaded MS Office Home and Student 2016","https://rukminim1.flixcart.com/image/832/832/jori64w0/computer/w/j/k/acer-na-gaming-laptop-original-imafb5ns3t8zsfke.jpeg?q=70"),
	("Vivo V15 Pro","Shiv Shankar",28990,4.5,"6 GB RAM | 128 GB ROM | Expandable Upto 256 GB | 16.23 cm (6.39 inch) FHD+ Display | 48 Million Quad Pixel Sensor (12 Million Effective Pixel) + 8MP + 5MP, AI Triple Rear Camera | 32MP Front Camera | 3700 mAh Li-ion Battery| Qualcomm Snapdragon 675AIE Octa Core 2.0GHz Processor","https://i.gadgets360cdn.com/products/large/1549971324_635_vivo_v15_pro.jpg"),
	("Flying Machine Skinny Men Blue Jeans","Shiv Shankar",925,4.2,"Size - 34 , 35 , 36","https://rukminim1.flixcart.com/image/880/1056/jsoyrgw0/jean/v/x/7/32-fmjnv0279-flying-machine-original-imafe7xnphgkduwh.jpeg?q=50"),
	("COBIO MAN Round Neck Yellow T-Shirt","Samarth Vats",249,4.0,"Size - M , L , XL","https://rukminim1.flixcart.com/image/880/1056/jt8yxe80/t-shirt/n/g/q/l-cm-ts29-cobio-man-original-imafen65jwshgfjn.jpeg?q=50"),
	("Dennis Floral Print CasualShirt","Saumya Prakash",615,4.4,"Size - S ,  M , L , XL , XXL","https://rukminim1.flixcart.com/image/880/1056/jj7givk0/shirt/z/r/v/l-c709-white-dennis-lingo-original-imaf6tf4hzngcz4z.jpeg?q=50"),
	("ManQ Formal Men's Blazer ","Shiv Shankar",2000,4.0,"Size - 34 , 36 , 36 , 40 , 42","https://rukminim1.flixcart.com/image/880/1056/j1i64y80/blazer/h/f/d/44-sb-black-manq-original-imaetfgayx7jyhbz.jpeg?q=50"), 
	("Genius18 Men Sweatshirt","Samarth Vats",768,4.0,"Size - M , L , XL","https://rukminim1.flixcart.com/image/880/1056/j9pyaa80/sweatshirt/8/f/e/l-aw17-hvar-m-pln-buwh-l-genius18-original-imaezfgbfud5zarv.jpeg?q=50"),
	("Maniac Full Sleeve Men's Jacket","Saumya Prakash",530,3.9,"Size - S ,  M , L , XL","https://rukminim1.flixcart.com/image/880/1056/jlqwpe80-1/jacket/q/q/m/s-aw18-zip-jacket-navy-way-maniac-original-imaf8qw2afcsheex.jpeg?q=50"),
	("Nike Solid Track Suit","Shiv Shankar",3995,4.3,"Size - S ,  M , L , XL , XXL","https://rukminim1.flixcart.com/image/880/1056/jt7jhjk0/track-suit/f/p/t/m-ao0054-010-nike-original-imafehymh9mvj2gd.jpeg?q=50"),
	("Woodness 4 Seater Dining Set","Samarth Vats",14399,3.9,"Table Top Material: Glass | Chair Frame: Metal | Upholstery Included | Table (W x H x D): 130 cm x 74 cm x 80 cm (4 ft 3 in x 2 ft 5 in x 2 ft 7 in)","https://rukminim1.flixcart.com/image/832/832/jfcut8w0/dining-set/k/s/t/4-seater-black-wrought-iron-6044-6161-woodness-black-original-imaf3tqfvzhhxzcd.jpeg?q=70"),
	("A Game of Thrones: The Story Continues","Saumya Prakash",2436,4.9,"Author: George R.R. Martin | Language: English | Binding: Mixed media product | Publisher: HarperCollins Publishers","https://rukminim1.flixcart.com/image/832/832/jpr86fk0/book/1/5/9/game-of-thrones-the-story-continues-7-book-boxset-original-imafbxc4f5xe3fha.jpeg?q=70"),
	("The Subtle Art of Not Giving a F*ck","Samarth Vats",311,4.6,"Author: Mark Manson | Language: English | Binding: Paperback |Publisher: Harper","https://rukminim1.flixcart.com/image/832/832/jph83gw0/book/5/4/0/the-subtle-art-of-not-giving-a-f-ck-original-imafbps4mckk9kru.jpeg?q=70");

select * from items;
