use `coviddb`;

/* 打卡信息表*/
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
