/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmkjm78
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmkjm78` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmkjm78`;

/*Table structure for table `caipinleibie` */

DROP TABLE IF EXISTS `caipinleibie`;

CREATE TABLE `caipinleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='菜品类别';

/*Data for the table `caipinleibie` */

insert  into `caipinleibie`(`id`,`addtime`,`leibie`) values (31,'2021-04-18 01:00:57','类别1'),(32,'2021-04-18 01:00:57','类别2'),(33,'2021-04-18 01:00:57','类别3'),(34,'2021-04-18 01:00:57','类别4'),(35,'2021-04-18 01:00:57','类别5'),(36,'2021-04-18 01:00:57','类别6');

/*Table structure for table `caipinxinxi` */

DROP TABLE IF EXISTS `caipinxinxi`;

CREATE TABLE `caipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinbianhao` varchar(200) DEFAULT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinleibie` varchar(200) DEFAULT NULL COMMENT '菜品类别',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuancailiao` longtext COMMENT '原材料',
  `pengrenfangfa` longtext COMMENT '烹饪方法',
  `caipintese` longtext COMMENT '菜品特色',
  `caipinjieshao` longtext COMMENT '菜品介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipinbianhao` (`caipinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='菜品信息';

/*Data for the table `caipinxinxi` */

insert  into `caipinxinxi`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caipinleibie`,`jiage`,`shuliang`,`tupian`,`yuancailiao`,`pengrenfangfa`,`caipintese`,`caipinjieshao`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (21,'2021-04-18 01:00:57','菜品编号1','菜品名称1','菜品类别1',1,1,'http://localhost:8080/ssmkjm78/upload/caipinxinxi_tupian1.jpg','原材料1','烹饪方法1','菜品特色1','菜品介绍1',1,1,'2021-04-18 01:00:57',1),(22,'2021-04-18 01:00:57','菜品编号2','菜品名称2','菜品类别2',2,2,'http://localhost:8080/ssmkjm78/upload/caipinxinxi_tupian2.jpg','原材料2','烹饪方法2','菜品特色2','菜品介绍2',2,2,'2021-04-18 01:00:57',2),(23,'2021-04-18 01:00:57','菜品编号3','菜品名称3','菜品类别3',3,3,'http://localhost:8080/ssmkjm78/upload/caipinxinxi_tupian3.jpg','原材料3','烹饪方法3','菜品特色3','菜品介绍3',3,3,'2021-04-18 01:00:57',3),(24,'2021-04-18 01:00:57','菜品编号4','菜品名称4','菜品类别4',4,4,'http://localhost:8080/ssmkjm78/upload/caipinxinxi_tupian4.jpg','原材料4','烹饪方法4','菜品特色4','菜品介绍4',4,4,'2021-04-18 01:00:57',4),(25,'2021-04-18 01:00:57','菜品编号5','菜品名称5','菜品类别5',5,5,'http://localhost:8080/ssmkjm78/upload/caipinxinxi_tupian5.jpg','原材料5','烹饪方法5','菜品特色5','菜品介绍5',5,5,'2021-04-18 01:00:57',5),(26,'2021-04-18 01:00:57','菜品编号6','菜品名称6','菜品类别6',6,6,'http://localhost:8080/ssmkjm78/upload/caipinxinxi_tupian6.jpg','原材料6','烹饪方法6','菜品特色6','菜品介绍6',6,6,'2021-04-18 01:00:57',6);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (51,'2021-04-18 01:00:57',1,1,'提问1','回复1',1),(52,'2021-04-18 01:00:57',2,2,'提问2','回复2',2),(53,'2021-04-18 01:00:57',3,3,'提问3','回复3',3),(54,'2021-04-18 01:00:57',4,4,'提问4','回复4',4),(55,'2021-04-18 01:00:57',5,5,'提问5','回复5',5),(56,'2021-04-18 01:00:57',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmkjm78/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmkjm78/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmkjm78/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdan` */

DROP TABLE IF EXISTS `dingdan`;

CREATE TABLE `dingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinbianhao` varchar(200) DEFAULT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinleibie` varchar(200) DEFAULT NULL COMMENT '菜品类别',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `heji` varchar(200) DEFAULT NULL COMMENT '合计',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuancailiao` varchar(200) DEFAULT NULL COMMENT '原材料',
  `pengrenfangfa` varchar(200) DEFAULT NULL COMMENT '烹饪方法',
  `caipintese` varchar(200) DEFAULT NULL COMMENT '菜品特色',
  `caipinjieshao` varchar(200) DEFAULT NULL COMMENT '菜品介绍',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `dingdan` */

insert  into `dingdan`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caipinleibie`,`jiage`,`shuliang`,`heji`,`tupian`,`yuancailiao`,`pengrenfangfa`,`caipintese`,`caipinjieshao`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (41,'2021-04-18 01:00:57','菜品编号1','菜品名称1','菜品类别1',1,1,'合计1','http://localhost:8080/ssmkjm78/upload/dingdan_tupian1.jpg','原材料1','烹饪方法1','菜品特色1','菜品介绍1','账号1','姓名1','是','','未支付'),(42,'2021-04-18 01:00:57','菜品编号2','菜品名称2','菜品类别2',2,2,'合计2','http://localhost:8080/ssmkjm78/upload/dingdan_tupian2.jpg','原材料2','烹饪方法2','菜品特色2','菜品介绍2','账号2','姓名2','是','','未支付'),(43,'2021-04-18 01:00:57','菜品编号3','菜品名称3','菜品类别3',3,3,'合计3','http://localhost:8080/ssmkjm78/upload/dingdan_tupian3.jpg','原材料3','烹饪方法3','菜品特色3','菜品介绍3','账号3','姓名3','是','','未支付'),(44,'2021-04-18 01:00:57','菜品编号4','菜品名称4','菜品类别4',4,4,'合计4','http://localhost:8080/ssmkjm78/upload/dingdan_tupian4.jpg','原材料4','烹饪方法4','菜品特色4','菜品介绍4','账号4','姓名4','是','','未支付'),(45,'2021-04-18 01:00:57','菜品编号5','菜品名称5','菜品类别5',5,5,'合计5','http://localhost:8080/ssmkjm78/upload/dingdan_tupian5.jpg','原材料5','烹饪方法5','菜品特色5','菜品介绍5','账号5','姓名5','是','','未支付'),(46,'2021-04-18 01:00:57','菜品编号6','菜品名称6','菜品类别6',6,6,'合计6','http://localhost:8080/ssmkjm78/upload/dingdan_tupian6.jpg','原材料6','烹饪方法6','菜品特色6','菜品介绍6','账号6','姓名6','是','','未支付');

/*Table structure for table `discussdingdan` */

DROP TABLE IF EXISTS `discussdingdan`;

CREATE TABLE `discussdingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='订单评论表';

/*Data for the table `discussdingdan` */

insert  into `discussdingdan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-04-18 01:00:57',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-04-18 01:00:57',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-04-18 01:00:57',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-04-18 01:00:57',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-04-18 01:00:57',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-04-18 01:00:57',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='美食资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (71,'2021-04-18 01:00:57','标题1','简介1','http://localhost:8080/ssmkjm78/upload/news_picture1.jpg','内容1'),(72,'2021-04-18 01:00:57','标题2','简介2','http://localhost:8080/ssmkjm78/upload/news_picture2.jpg','内容2'),(73,'2021-04-18 01:00:57','标题3','简介3','http://localhost:8080/ssmkjm78/upload/news_picture3.jpg','内容3'),(74,'2021-04-18 01:00:57','标题4','简介4','http://localhost:8080/ssmkjm78/upload/news_picture4.jpg','内容4'),(75,'2021-04-18 01:00:57','标题5','简介5','http://localhost:8080/ssmkjm78/upload/news_picture5.jpg','内容5'),(76,'2021-04-18 01:00:57','标题6','简介6','http://localhost:8080/ssmkjm78/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-18 01:00:57');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`beizhu`) values (11,'2021-04-18 01:00:57','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmkjm78/upload/yonghu_zhaopian1.jpg','备注1'),(12,'2021-04-18 01:00:57','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmkjm78/upload/yonghu_zhaopian2.jpg','备注2'),(13,'2021-04-18 01:00:57','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmkjm78/upload/yonghu_zhaopian3.jpg','备注3'),(14,'2021-04-18 01:00:57','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmkjm78/upload/yonghu_zhaopian4.jpg','备注4'),(15,'2021-04-18 01:00:57','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmkjm78/upload/yonghu_zhaopian5.jpg','备注5'),(16,'2021-04-18 01:00:57','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmkjm78/upload/yonghu_zhaopian6.jpg','备注6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
