CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` nvarchar(255) DEFAULT "https://tupian.qqw21.com/article/UploadPic/2015-3/201531721351158436.gif",
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

insert  into `user`(`username`,`password`) values ('admin','123456'),('宋佳龙','111111'),('王诗媛','202100810243');
