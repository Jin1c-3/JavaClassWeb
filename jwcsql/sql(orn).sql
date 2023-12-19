USE `covid`;

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;
/*部门信息*/
CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `charge` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `department` */

insert  into `department`(`id`,`name`,`charge`) values (1,'组织部','王鸿儒'),(2,'学习部','于靖怿'),(3,'体育部','李昭晨'),(4,'科技部','刘锐昕'),(5,'生活部','宋佳龙'),(6,'文艺部','王诗媛');
/*Table structure for table `emp_health` */

DROP TABLE IF EXISTS `emp_health`;
/* 打卡信息表*/
CREATE TABLE `emp_health` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `phonenum` bigint(20) DEFAULT NULL,
  `temp` float(4,1) DEFAULT NULL,
  `risk` varchar(30) DEFAULT NULL,
  `health` varchar(30) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `depart` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `de` (`depart`),
  CONSTRAINT `de` FOREIGN KEY (`depart`) REFERENCES `department` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `emp_health` */

INSERT INTO covid.emp_health (id, name, sex, phonenum, temp, risk, health, content, createTime, depart) VALUES (1, '王诗媛', 0, 13512365456, 36.5, '否', '乏力', '', '2022-11-16 14:46:49', '文艺部');
INSERT INTO covid.emp_health (id, name, sex, phonenum, temp, risk, health, content, createTime, depart) VALUES (2, '刘翔', 1, 15143355464, 36.5, '否', '正常', '', '2022-11-8 14:03:52', '文艺部');
INSERT INTO covid.emp_health (id, name, sex, phonenum, temp, risk, health, content, createTime, depart) VALUES (3, '吴雷师', 0, 15151549751, 37, '否', '正常', '无', '2022-11-9 20:16:30', '生活部');
INSERT INTO covid.emp_health (id, name, sex, phonenum, temp, risk, health, content, createTime, depart) VALUES (4, '刘腾键', 1, 13415135795, 36.5, '否', '正常', '', '2022-11-10 19:54:40', '学习部');
INSERT INTO covid.emp_health (id, name, sex, phonenum, temp, risk, health, content, createTime, depart) VALUES (5, '刘腾键', 1, 13415135795, 36.5, '否', '感冒', '', '2022-11-10 20:42:05', '学习部');
INSERT INTO covid.emp_health (id, name, sex, phonenum, temp, risk, health, content, createTime, depart) VALUES (6, '刘胜虎', 1, 123414234123, 39, '否', '低烧', '', '2022-11-10 22:41:39', '科技部');
INSERT INTO covid.emp_health (id, name, sex, phonenum, temp, risk, health, content, createTime, depart) VALUES (7, '王继红', 0, 13513534534, 38, '否', '与新冠肺炎有关的其他症状，如流涕，咽痛，肌痛，腹泻等', '', '2022-11-12 13:39:38', null);
INSERT INTO covid.emp_health (id, name, sex, phonenum, temp, risk, health, content, createTime, depart) VALUES (8, '刘小', 1, 231123123, 23, '是', '呼吸困难', '', '2022-11-12 15:34:42', '体育部');
INSERT INTO covid.emp_health (id, name, sex, phonenum, temp, risk, health, content, createTime, depart) VALUES (9, '于毅', 1, 111111111, 11, '111', '正常', '11', '2022-11-12 16:03:01', '文艺部');
INSERT INTO covid.emp_health (id, name, sex, phonenum, temp, risk, health, content, createTime, depart) VALUES (10, '刘渲', 1, 13514124567, 37, '否', '正常', '', '2022-11-15 14:29:15', '组织部');
INSERT INTO covid.emp_health (id, name, sex, phonenum, temp, risk, health, content, createTime, depart) VALUES (11, '王佳', 0, 13512314534, 37.5, '否', '正常', '', '2022-11-15 14:42:55', '文艺部');

/*Table structure for table `emp_iden` */

DROP TABLE IF EXISTS `emp_iden`;
/*疑似人员登记表*/
CREATE TABLE `emp_iden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `sex` int(2) DEFAULT NULL,
  `idcard` varchar(20) DEFAULT NULL,
  `idate` date DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `phonenum` bigint(100) DEFAULT NULL,
  `register` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `depart` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `emp_iden_ibfk_1` (`depart`),
  CONSTRAINT `emp_iden_ibfk_1` FOREIGN KEY (`depart`) REFERENCES `department` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `emp_iden` */

INSERT INTO covid.emp_iden (id, name, sex, idcard, idate, place, phonenum, register, status, depart) VALUES (1, '何丽涛', 1, '440524196002152100', '2022-8-13', '威海市立医院', 13457896457, '2022-11-10 15:31:44', '确诊', '学习部');
INSERT INTO covid.emp_iden (id, name, sex, idcard, idate, place, phonenum, register, status, depart) VALUES (2, '于靖怿', 1, '440634199004050312', '2022-8-5', '威海市立医院', null, '2022-11-14 11:33:31', '确诊', '学习部');
INSERT INTO covid.emp_iden (id, name, sex, idcard, idate, place, phonenum, register, status, depart) VALUES (3, '张三', 0, null, '2022-11-13', '威海卫人民医院', null, null, '疑似', '生活部');
INSERT INTO covid.emp_iden (id, name, sex, idcard, idate, place, phonenum, register, status, depart) VALUES (4, '李四', 0, '440578199505150547', '2022-5-13', '威海卫人民医院', 13411234457, null, '治愈', null);
INSERT INTO covid.emp_iden (id, name, sex, idcard, idate, place, phonenum, register, status, depart) VALUES (5, '王五', 1, '440578199902150351', '2022-6-20', '威海卫人民医院', 13453456785, '2022-11-11 16:05:11', '疑似', '文艺部');
INSERT INTO covid.emp_iden (id, name, sex, idcard, idate, place, phonenum, register, status, depart) VALUES (6, '赵六', 1, '440582198005040800', '2022-9-8', '威海市中医院', 13457891231, '2022-11-9 16:22:26', '疑似', '科技部');
INSERT INTO covid.emp_iden (id, name, sex, idcard, idate, place, phonenum, register, status, depart) VALUES (7, '张伟', 1, '440578198905213551', '2022-7-6', '威海市中心医院', 1581456785, '2022-11-5 16:05:11', '死亡', '组织部');
INSERT INTO covid.emp_iden (id, name, sex, idcard, idate, place, phonenum, register, status, depart) VALUES (8, '郭春生', 1, null, '2022-9-19', '威海市中心医院', 13531342457, '2022-11-4 14:49:15', '治愈', '学习部');
INSERT INTO covid.emp_iden (id, name, sex, idcard, idate, place, phonenum, register, status, depart) VALUES (9, '', 0, '34124', '2022-10-22', '荣成人民医院', 13411213257, '2022-11-2 14:49:32', '死亡', null);
INSERT INTO covid.emp_iden (id, name, sex, idcard, idate, place, phonenum, register, status, depart) VALUES (10, '吴开师', 1, '440578199807050321', '2022-9-3', '威海市立医院', 13412823457, '2022-11-12 16:05:11', '疑似', '体育部');
/*Table structure for table `emp_is` */

DROP TABLE IF EXISTS `emp_is`;
/*隔离人员登记表 */
CREATE TABLE `emp_is` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` int(3) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `temp` float(10,2) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `leaved` varchar(100) DEFAULT NULL,
  `arrived` varchar(100) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `depart` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dep` (`depart`),
  CONSTRAINT `dep` FOREIGN KEY (`depart`) REFERENCES `department` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `emp_is` */


INSERT INTO covid.emp_is (id, name, sex, phone, temp, type, place, begin, end, leaved, arrived, content, depart) VALUES (1, '黎香湖', 0, 12341231231, 35, '酒店隔离', '威海百纳瑞汀酒店', '2022-05-7 00:00:00', '2022-05-14 00:00:00', '重庆市', '山东济南', null, null);
INSERT INTO covid.emp_is (id, name, sex, phone, temp, type, place, begin, end, leaved, arrived, content, depart) VALUES (2, '王鸿儒', 1, 13545479653, 38.5, '酒店集中隔离', '威海百纳瑞汀酒店', '2022-04-14 00:00:00', '2022-04-21 00:00:00', '广西南宁', '山东济南', '', '组织部');
INSERT INTO covid.emp_is (id, name, sex, phone, temp, type, place, begin, end, leaved, arrived, content, depart) VALUES (3, '蔡司', 1, 13452342356, 36.6, '酒店集中隔离', '银座佳驿酒店(威高广场店)', '2022-06-23 00:00:00', '2022-06-30 00:00:00', '新疆乌鲁木齐', '北京市', '', '文艺部');
INSERT INTO covid.emp_is (id, name, sex, phone, temp, type, place, begin, end, leaved, arrived, content, depart) VALUES (4, '万一', 1, 13452342357, 35.6, '居家隔离', '威海市环翠区青岛中路128号', '2022-11-09 00:00:00', '2022-11-16 00:00:00', '内蒙古呼和浩特', '湖南长沙', '', '体育部');
/*Table structure for table `material_manage` */

DROP TABLE IF EXISTS `material_manage`;
/* 物资管理表*/
CREATE TABLE `material_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `isImp` int(11) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `cnum` bigint(20) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

/*Data for the table `material_manage` */


INSERT INTO covid.material_manage (id, name, count, type, isImp, charge, cnum, updateTime) VALUES (113, 'KN94口罩', 150, '个', 1, '孙迪', 13415135777, '2022-10-31 13:54:36');
INSERT INTO covid.material_manage (id, name, count, type, isImp, charge, cnum, updateTime) VALUES (114, 'N95口罩', 220, '个', 1, '孙迪', 13415135777, '2022-10-5 16:14:45');
INSERT INTO covid.material_manage (id, name, count, type, isImp, charge, cnum, updateTime) VALUES (123, '防护服', 30, '个', 1, '王鸿儒', 13545479653, '2022-11-3 14:21:56');
INSERT INTO covid.material_manage (id, name, count, type, isImp, charge, cnum, updateTime) VALUES (126, '抽纸纸巾', 20, '箱', 0, '李玉', 13534654675, '2022-10-22 19:29:30');
INSERT INTO covid.material_manage (id, name, count, type, isImp, charge, cnum, updateTime) VALUES (133, '防护眼罩', 30, '个', 1, '杨迪', 123123123123, '2022-10-4 17:00:52');
/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;
/*管理员信息 */
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `depart` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`depart`) values (1,'admin','ABC123456','组织部'),(2,'sjl233','sjl88888888','生活部'),(3,'2021','202100810243','科技部');
