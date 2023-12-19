use `coviddb`;

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