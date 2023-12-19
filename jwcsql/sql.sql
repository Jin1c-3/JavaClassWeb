USE `coviddb`;

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` nvarchar(255) DEFAULT NULL,
  `num` int DEFAULT NULL,
  `flag` nvarchar(5) DEFAULT NULL,
  `phone` nvarchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `fileurl` nvarchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;
INSERT INTO coviddb.category (id, name, num,flag, phone,date) VALUES (113, 'KN94口罩', 150, '是', 13415135777, '2022-10-31 13:54:36');
INSERT INTO coviddb.category (id, name, num,flag, phone,date) VALUES (114, 'N95口罩', 220, '是', 13415135777, '2022-10-5 16:14:45');
INSERT INTO coviddb.category (id, name, num,flag, phone,date) VALUES (123, '防护服', 30,  '是', 13545479653, '2022-11-3 14:21:56');
INSERT INTO coviddb.category (id, name, num,flag, phone,date) VALUES (126, '抽纸纸巾', 20, '否', 13534654675, '2022-10-22 19:29:30');
INSERT INTO coviddb.category (id, name, num,flag, phone,date) VALUES (133, '防护眼罩', 30, '是', 123123123123, '2022-10-4 17:00:52');

CREATE TABLE `record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` nvarchar(20) DEFAULT NULL,
  `gender` nvarchar(4) DEFAULT NULL,
  `phone` nvarchar(20) DEFAULT NULL,
  `tem` float(4,1) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `des` nvarchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=894 DEFAULT CHARSET=utf8;
INSERT INTO coviddb.record(name, gender, phone, tem, time) VALUES ('王诗媛', '女', 13512365456, 36.5, '2022-11-16 14:46:49');
INSERT INTO coviddb.record(name, gender, phone, tem, time) VALUES ('于靖怿', '男', 15143355464, 36.5,  '2022-11-8 14:03:52');
INSERT INTO coviddb.record(name, gender, phone, tem, time) VALUES ('刘锐昕', '男', 15151549751, 37, '2022-11-9 20:16:30');
INSERT INTO coviddb.record(name, gender, phone, tem, time) VALUES ('宋佳龙', '男', 13415135795, 36.5,'2022-11-10 19:54:40');
INSERT INTO coviddb.record(name, gender, phone, tem, time) VALUES ('宋佳龙', '男', 13415135795, 36.5,'2022-11-10 20:42:05');
INSERT INTO coviddb.record(name, gender, phone, tem, time,des) VALUES ('李昭晨', '男', 123414234123, 39, '2022-11-10 22:41:39','头疼欲裂，还买不到药品');
INSERT INTO coviddb.record(name, gender, phone, tem, time,des) VALUES ('王继红', '女', 13513534534, 38,  '2022-11-12 13:39:38','急需芬必得止疼！');
INSERT INTO coviddb.record(name, gender, phone, tem, time) VALUES ('刘小', '男', 231123123, 36,  '2022-11-12 15:34:42');
INSERT INTO coviddb.record(name, gender, phone, tem, time) VALUES ('于毅', '男', 111111111, 36.5 , '2022-11-12 16:03:01');
INSERT INTO coviddb.record(name, gender, phone, tem, time) VALUES ( '刘渲', '男', 13514124567, 37,  '2022-11-15 14:29:15');
INSERT INTO coviddb.record(name, gender, phone, tem, time,des) VALUES ( '王佳', '女', 13512314534, 37.5,'2022-11-15 14:42:55','有一点发烧，但不应i想正常生活');

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` nvarchar(255) DEFAULT "https://tupian.qqw21.com/article/UploadPic/2015-3/201531721351158436.gif",
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
insert  into `user`(`username`,`password`) values ('admin','123456'),('宋佳龙','111111'),('王诗媛','202100810243');
