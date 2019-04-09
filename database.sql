
/*line above will vary with user*/
create table user (userid int not NULL auto_increment,fullname varchar(50),username varchar(30),usertype varchar(10),password varchar(40),address varchar(50),primary key(userid),UNIQUE(username));
alter table user auto_increment=100;

create table items (itemid int not NULL auto_increment,itemname varchar(100),seller varchar(30),sellerid int,category varchar(30),price decimal(12,2),rating decimal(2,1),details varchar(1000),link varchar(1000),primary key(itemid));
alter table items auto_increment=200;

create table cart (userid int,itemid int);

create table orders(orderid int auto_increment, userid int, itemid int, status char(20),primary key(orderid));

insert into items (itemname,seller,sellerid,category,price,rating,details,link) values
	("MI Note 5 Pro","Saumya Prakash",109,"Phone",15000,4.6,"4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) Full HD+ Display | 12MP + 5MP | 20MP Front Camera | 4100 mAh Battery | Qualcomm Snapdragon 636 Processor ","https://images-na.ssl-images-amazon.com/images/I/51N7nR%2BYarL._SX679_.jpg"),
	("Iphone Xs","Samarth Vats",100,"Phone",150000,3.6,"64 GB ROM | 14.73 cm (5.8 inch) Super Retina HD Display | 12MP + 12MP | 7MP Front Camera | A12 Bionic Chip Processor","https://i.gadgets360cdn.com/products/large/1536782640_635_iphone_xs.jpg"),
	("Realme 3","Shiv Shankar",103,"Phone",10999,4.5,"4 GB RAM | 64 GB ROM | 15.8 cm (6.22 inch) HD+ Display | 13MP + 2MP | 13MP Front Camera | 4230 mAh Battery | MediaTek Helio P70 Octa Core 2.1 GHz AI Processor ","https://www.91-cdn.com/pricebaba-images/images/product/mobile/60023/realme-3-raw-212436.jpg"),
	("EZAR 3.0 M Running Shoes For Men (Navy)","Saumya Prakash",101,"Shoes",2149,3.9,NULL,"https://rukminim1.flixcart.com/image/880/1056/j612c280/shoe/y/z/a/ezar-3-0-m-8-adidas-tecste-silvmt-shosli-original-imaewh7h7ankd5nw.jpeg?q=50"),
	("Samsung 192 L Direct Cool Refrigerator","Shiv Shankar",103,"Refrigerator",16290,4.5,"192.0 L : Good for couples and small families | Digital Inverter Compressor | 5 Star : For Energy savings up to 55%","https://static.digit.in/product/98ffaa527db3ccaf796b56e6b29225c005571239.jpeg"),
	("Acer Predator Helios 300 Core i5 8th Gen","Samarth Vats",102,"Laptop",68900,4.3,"NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance | 15.6 inch Full HD LED Backlit IPS Display | Light Laptop without Optical Disk Drive | Pre-installed Genuine Windows 10 OS | Preloaded MS Office Home and Student 2016","https://rukminim1.flixcart.com/image/832/832/jori64w0/computer/w/j/k/acer-na-gaming-laptop-original-imafb5ns3t8zsfke.jpeg?q=70"),
	("Vivo V15 Pro","Shiv Shankar",103,"Phone",28990,4.5,"6 GB RAM | 128 GB ROM | Expandable Upto 256 GB | 16.23 cm (6.39 inch) FHD+ Display | 48 Million Quad Pixel Sensor (12 Million Effective Pixel) + 8MP + 5MP, AI Triple Rear Camera | 32MP Front Camera | 3700 mAh Li-ion Battery| Qualcomm Snapdragon 675AIE Octa Core 2.0GHz Processor","https://i.gadgets360cdn.com/products/large/1549971324_635_vivo_v15_pro.jpg"),
	("Flying Machine Skinny Men Blue Jeans","Shiv Shankar",103,"Jeans",925,4.2,"Size - 34 , 35 , 36","https://rukminim1.flixcart.com/image/880/1056/jsoyrgw0/jean/v/x/7/32-fmjnv0279-flying-machine-original-imafe7xnphgkduwh.jpeg?q=50"),
	("COBIO MAN Round Neck Yellow T-Shirt","Samarth Vats",102,"T-Shirt",249,4.0,"Size - M , L , XL","https://rukminim1.flixcart.com/image/880/1056/jt8yxe80/t-shirt/n/g/q/l-cm-ts29-cobio-man-original-imafen65jwshgfjn.jpeg?q=50"),
	("Dennis Floral Print CasualShirt","Saumya Prakash",101,"Shirt",615,4.4,"Size - S ,  M , L , XL , XXL","https://rukminim1.flixcart.com/image/880/1056/jj7givk0/shirt/z/r/v/l-c709-white-dennis-lingo-original-imaf6tf4hzngcz4z.jpeg?q=50"),
	("ManQ Formal Men's Blazer ","Shiv Shankar",103,"Blazer",2000,4.0,"Size - 34 , 36 , 36 , 40 , 42","https://rukminim1.flixcart.com/image/880/1056/j1i64y80/blazer/h/f/d/44-sb-black-manq-original-imaetfgayx7jyhbz.jpeg?q=50"),
	("Genius18 Men Sweatshirt","Samarth Vats",102,"Sweatshirt",768,4.0,"Size - M , L , XL","https://rukminim1.flixcart.com/image/880/1056/j9pyaa80/sweatshirt/8/f/e/l-aw17-hvar-m-pln-buwh-l-genius18-original-imaezfgbfud5zarv.jpeg?q=50"),
	("Maniac Full Sleeve Men's Jacket","Saumya Prakash",101,"Jacket",530,3.9,"Size - S ,  M , L , XL","https://rukminim1.flixcart.com/image/880/1056/jlqwpe80-1/jacket/q/q/m/s-aw18-zip-jacket-navy-way-maniac-original-imaf8qw2afcsheex.jpeg?q=50"),
	("Nike Solid Track Suit","Shiv Shankar",103,"Track Suit",3995,4.3,"Size - S ,  M , L , XL , XXL","https://rukminim1.flixcart.com/image/880/1056/jt7jhjk0/track-suit/f/p/t/m-ao0054-010-nike-original-imafehymh9mvj2gd.jpeg?q=50"),
	("Woodness 4 Seater Dining Set","Samarth Vats",102,"Furniture",14399,3.9,"Table Top Material: Glass | Chair Frame: Metal | Upholstery Included | Table (W x H x D): 130 cm x 74 cm x 80 cm (4 ft 3 in x 2 ft 5 in x 2 ft 7 in)","https://rukminim1.flixcart.com/image/832/832/jfcut8w0/dining-set/k/s/t/4-seater-black-wrought-iron-6044-6161-woodness-black-original-imaf3tqfvzhhxzcd.jpeg?q=70"),
	("A Game of Thrones: The Story Continues","Saumya Prakash",101,"Books",2436,4.9,"Author: George R.R. Martin | Language: English | Binding: Mixed media product | Publisher: HarperCollins Publishers","https://rukminim1.flixcart.com/image/832/832/jpr86fk0/book/1/5/9/game-of-thrones-the-story-continues-7-book-boxset-original-imafbxc4f5xe3fha.jpeg?q=70"),
	("The Subtle Art of Not Giving a F*ck","Samarth Vats",102,"Books",311,4.6,"Author: Mark Manson | Language: English | Binding: Paperback |Publisher: Harper","https://rukminim1.flixcart.com/image/832/832/jph83gw0/book/5/4/0/the-subtle-art-of-not-giving-a-f-ck-original-imafbps4mckk9kru.jpeg?q=70"),
	("MarkQ Front Load Washing Machine","Saumya Prakash",101,"Washing Machine",15499,4.3,"1000 rpm : Higher the spin speed, lower the drying time | Number of wash programs - 10 | Stainless Steel | 6.5 kg : Great for a family of 3","https://rukminim1.flixcart.com/image/832/832/jkim1zk0/washing-machine-new/j/h/a/mqflxi65-marq-by-flipkart-original-imaf7uhjybqp73wr.jpeg?q=70"),
	("Livpure RO+UV+UF Water Purifier","Samarth Vats",102,"Water Purifier",8999,4.3,"7 L:More the capacity, more the users can be served with drinking water | RO + UV + UF : Uses many filters to remove salts & microbes in multiple stages","https://rukminim1.flixcart.com/image/832/832/j13vqfk0/water-purifier/8/n/7/livpure-pep-pro-original-imaesrgs2c2gtyvh.jpeg?q=70"),
	("Bajaj GX1 500 W Mixer Grinder","Shiv Shankar",103,"Mixer Grinder",1749,4.1,"500 W : Higher the Wattage, tougher the Juicing/Grinding | Suitable for Chutney Grinding","https://rukminim1.flixcart.com/image/832/832/jay8xow0/mixer-grinder-juicer/g/h/h/bajaj-px-80-f-gx-1-mixer-grinder-original-imafyagzggz7espm.jpeg?q=70"),
	("LG 28 L Convection Microwave Oven","Saumya Prakash",101,"Oven",15490,4.4,"28 L:Great for family of 4 | Convection : Can be used for baking along with grilling, reheating, defrosting and cooking | Child Lock : Ensures complete safety especially for homes with small children ","https://rukminim1.flixcart.com/image/832/832/j9zyd8w0/microwave-new/z/t/b/mc2886brum-lg-original-imaezzentbypdxc9.jpeg?q=70"),
	("Bose Bluetooth Headset with Mic","Samarth Vats",102,"Headphones",29363,4.5,"Noise Cancellation Headphone Jack: 3.5 mm | Google Assistant -Built In | Bluetooth Support: Yes | Volume-Optimized Equalizer | 40 hours Play Time","https://rukminim1.flixcart.com/image/832/832/j9d3bm80/headphone/z/s/f/bose-quietcomfort-35-ii-original-imaeyzzctgygz4pf.jpeg?q=70"),
	("Kurlon 3 + 1 + 1 Black Sofa Set","Shiv Shankar",103,"Sofa",27899,4.2,"Polyester | Filling Material: Foam | Frame Material: Solid Wood","https://rukminim1.flixcart.com/image/832/832/jp780i80/sofa-set/e/d/p/black-polyester-lef0000427c1a1a100-3-1-1-kurlon-black-original-imafbhs5rqpudqtv.jpeg?q=70"),
	("HomeTown Wood King Bed","Saumya Prakash",101,"Beds",18499,3.8,"Material Subtype: Particle Board | W x H x D: 1900 mm x 1000 mm x 2175 mm (6 ft 2 in x 3 ft 3 in x 7 ft 1 in)","https://rukminim1.flixcart.com/image/832/832/jsc3ssw0/bed/e/f/r/king-na-particle-board-830042803001-hometown-wenge-original-imafdxg7zh7s8zpm.jpeg?q=70"),
	("SmartBuy XL Bean Bag","Shiv Shankar",103,"Bean Bags",4999,3.9,"Artificial Leather | Color: Multicolor","https://rukminim1.flixcart.com/image/832/832/jcjejrk0/bean-bag/k/y/h/xxl-str116-sb45-xxl-fl-flipkart-smartbuy-original-imaffng8tncbfjtp.jpeg?q=70");


select * from items;

#query for search bar
select * from items where category="";
