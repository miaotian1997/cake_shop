
CREATE TABLE cake_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32), #用户名
	upwd VARCHAR(32), #密码
	phone VARCHAR(16), #手机号码
	birthday VARCHAR(32) #生日
);
INSERT INTO cake_user VALUES
('NULL','tom',123456,13564945455,'1998-05-21'),
('NULL','mm',123456,13564945455,'1997-05-21'),
('NULL','tt',123456,13564945455,'1996-05-21'),
('NULL','ii',123456,13564945455,'1995-05-21'),
('NULL','mini',123456,13564945455,'1994-05-21');

CREATE TABLE cake_list(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id VARCHAR(15), #所属型号家族编号
  title  VARCHAR(32),    #主标题
  price  DECIMAL(10,2),  #价格
  spec VARCHAR(64),        #2.0磅
  details VARCHAR(1024),   #蛋糕详细说明
  shelf_time BIGINT,       #上架时间
  sold_count INT,          #已售出的数量
  is_onsale BOOLEAN,        #是否促销中
  img_url  VARCHAR(300)   #图片路径
);
INSERT INTO cake_list VALUES
(null,1,"草莓奶油蛋糕","228.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"img/index/1f1.png"),
(null,2,"黑森林","398.00","2.0磅","樱桃酒味，从巧克力卷的缝隙飘出","2019-3-11",300,1,"img/index/1f2.png"),
(null,1,"平安夜","328.00","2.0磅","一层新雪下，肉桂与松子香气弥散开来","2019-3-11",300,1,"img/index/1f3.png"),
(null,1,"小重组","298.00","2.0磅","均一，轻褐的千层酥，三种“重组可能”","2019-3-11",300,1,"img/index/1f4.png"),
(null,1,"百利甜情人","298.00","2.0磅","新切的水果与刚折的玫瑰，甜美、渐浓","2019-3-11",300,1,"img/index/2f1.png"),
(null,1,"榴莲飘飘","298.00","2.0磅","丰厚乳脂奶油，打入足量榴莲果肉","2019-3-11",300,1,"img/index/2f2.png"),
(null,1," 黑白巧克力慕斯 彼尔德（生日）","298.00","2.0磅","卡通定制撒粉，简单、柔软","2019-3-11",300,1,"img/index/2f3.png"),
(null,1,"枣儿","298.00","2.0磅","红枣奶油戚风，与姜撞奶慕斯","2019-3-11",300,1,"img/index/2f4.png"),
(null,1,"黑白巧克力慕斯 彼尔德（Party）","298.00","2.0磅","“ 孩子的世界，简单到非黑即白。”","2019-3-11",300,1,"img/index/3f1.png"),
(null,1,"芒果奶油蛋糕","198.00","2.0磅","21cake配方芒果百香果慕斯夹心","2019-3-11",300,1,"img/index/3f2.png"),
(null,1,"百香果酸乳酪慕斯（木糖醇）","298.00","2.0磅","百香果酸乳酪慕斯（木糖醇）","2019-3-11",300,1,"img/index/3f3.png"),
(null,1,"心语心愿","298.00","2.0磅","<span>椰子香气，蛋糕坯的颗粒感平衡奶油的软滑，烛光","2019-3-11",300,1,"img/index/3f4.png"),
(null,1," 6口味切块","198.00","6个","多口味，精装小份","2019-3-11",300,1,"img/index/4f1.png"),
(null,1,"黑白巧克力慕斯","298.00","2.0磅","白巧克力慕斯的甜，与黑巧克力酱的苦","2019-3-11",300,1,"img/index/4f2.png"),
(null,1,"朗姆芝士","228.00","2.0磅","马斯卡彭慕斯，叠加法国软芝士","2019-3-11",300,1,"img/index/4f3.png"),
(null,1,"黑越橘","298.00","2.0磅","马斯卡彭慕斯，叠加法国软芝士","2019-3-11",300,1,"img/index/4f4.png");

CREATE TABLE product_list(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id VARCHAR(15), #所属型号家族编号
  title  VARCHAR(32),    #主标题
  price  DECIMAL(10,2),  #价格
  spec VARCHAR(64),        #2.0磅
  details VARCHAR(1024),   #蛋糕详细说明
  shelf_time BIGINT,       #上架时间
  sold_count INT,          #已售出的数量
  is_onsale BOOLEAN,        #是否促销中
  img_url  VARCHAR(300)   #图片路径
);
INSERT INTO product_list VALUES
(null,1,"百利甜情人","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake1.jpg"),
(null,1,"黑白巧克力慕斯","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake2.png"),
(null,1,"朗姆芝士","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake3.png"),
(null,1,"草莓奶油蛋糕","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake4.png"),
(null,1,"黑森林","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake5.png"),
(null,1,"黑越橘","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake6.jpg"),
(null,1,"碎碎平安","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake7.jpg"),
(null,1,"小重组(迷迭香套组)","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake8.jpg"),
(null,1,"小重组(蓝莓套组)","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake9.jpg"),
(null,1,"小重组(树莓套组)","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake10.jpg"),
(null,1,"黑白巧克力慕斯(千阳号)","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake11.jpg"),
(null,1,"榴莲飘飘","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake12.jpg"),
(null,1,"芒果奶油蛋糕","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake13.png"),
(null,1,"(新)栗蓉暗香","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake14.jpg"),
(null,1,"冻慕斯与焗芝士","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake15.jpg"),
(null,1,"浅草","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake16.jpg"),
(null,1,"松仁淡奶(木糖醇)","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake17.jpg"),
(null,1,"松仁淡奶","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake18.jpg"),
(null,1,"东方栗融","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake19.jpg"),
(null,1,"布莱克","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake20.jpg"),
(null,1,"布朗尼","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake21.jpg"),
(null,1,"核桃斯诺","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake22.jpg"),
(null,1,"枣儿","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake23.png"),
(null,1,"芒果慕斯","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake24.jpg"),
(null,1,"摩卡","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake25.jpg"),
(null,1,"新卡","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake26.jpg"),
(null,1,"彼尔德(Party)黑白巧克力慕斯","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake27.png"),
(null,1,"圆角","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake28.jpg"),
(null,1,"百香果乳酪慕斯(木糖醇)","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake29.jpg"),
(null,1,"百香果乳酪慕斯","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake30.jpg"),
(null,1,"深艾尔","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"."),
(null,1,"彼尔德(Party)黑白巧克力慕斯","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake31.jpg"),
(null,1,"百利甜情人","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake32.jpg"),
(null,1,"黑白巧克力慕斯","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake33.jpg"),
(null,1,"朗姆芝士","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake34.jpg"),
(null,1,"草莓奶油蛋糕","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake35.jpg"),
(null,1,"黑森林","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake36.jpg"),
(null,1,"黑越橘","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake37.png"),
(null,1,"碎碎平安","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake38.jpg"),
(null,1,"小重组(迷迭香套组)","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake39.jpg"),
(null,1,"小重组(蓝莓套组)","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake40.jpg"),
(null,1,"小重组(树莓套组)","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake41.jpg"),
(null,1,"黑白巧克力慕斯(千阳号)","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake42.jpg"),
(null,1,"榴莲飘飘","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake43.jpg"),
(null,1,"芒果奶油蛋糕","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake44.jpg"),
(null,1,"(新)栗蓉暗香","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake45.jpg"),
(null,1,"冻慕斯与焗芝士","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake46.jpg"),
(null,1,"浅草","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake47.jpg"),
(null,1,"松仁淡奶(木糖醇)","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake48.jpg"),
(null,1,"松仁淡奶","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake49.jpg"),
(null,1,"东方栗融","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake50.jpg"),
(null,1,"布莱克","298.00","2.0磅","甜润奶油，与草莓的自然添堵搭配","2019-3-11",300,1,"./img/product/product/cake51.jpg");

#购物车表
#货币误差 小数 1-0.99=0.100000000001
#price INT 要求精度高不允许
#1.99*100=199 单位分 200/100=2.00
CREATE TABLE cake_cart(
  id     INT PRIMARY KEY AUTO_INCREMENT,
  uid    INT,         #商品编号
  lid    INT,         #商品id
  price  DECIMAL(10,2),   #价格
  pname  VARCHAR(64),     #商品名称
  img    VARCHAR(128) DEFAULT NULL,
  count  VARCHAR(1024)  #数量
);

