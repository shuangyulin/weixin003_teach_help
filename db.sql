/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm7hpe6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm7hpe6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm7hpe6`;

/*Table structure for table `chengjixinxi` */

DROP TABLE IF EXISTS `chengjixinxi`;

CREATE TABLE `chengjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `kemu` varchar(200) NOT NULL COMMENT '科目',
  `chengji` varchar(200) NOT NULL COMMENT '成绩',
  `dianping` longtext COMMENT '点评',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='成绩信息';

/*Data for the table `chengjixinxi` */

insert  into `chengjixinxi`(`id`,`addtime`,`bianhao`,`mingcheng`,`xuehao`,`xueshengxingming`,`kemu`,`chengji`,`dianping`,`gonghao`,`jiaoshixingming`,`userid`) values (61,'2021-03-10 00:19:57','编号1','名称1','学号1','学生姓名1','科目1','成绩1','点评1','工号1','教师姓名1',1),(62,'2021-03-10 00:19:57','编号2','名称2','学号2','学生姓名2','科目2','成绩2','点评2','工号2','教师姓名2',2),(63,'2021-03-10 00:19:57','编号3','名称3','学号3','学生姓名3','科目3','成绩3','点评3','工号3','教师姓名3',3),(64,'2021-03-10 00:19:57','编号4','名称4','学号4','学生姓名4','科目4','成绩4','点评4','工号4','教师姓名4',4),(65,'2021-03-10 00:19:57','编号5','名称5','学号5','学生姓名5','科目5','成绩5','点评5','工号5','教师姓名5',5),(66,'2021-03-10 00:19:57','编号6','名称6','学号6','学生姓名6','科目6','成绩6','点评6','工号6','教师姓名6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm7hpe6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm7hpe6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm7hpe6/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusskechengxinxi` */

DROP TABLE IF EXISTS `discusskechengxinxi`;

CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';

/*Data for the table `discusskechengxinxi` */

insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-03-10 00:19:57',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-10 00:19:57',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-10 00:19:57',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-10 00:19:57',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-10 00:19:57',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-10 00:19:57',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`xueyuan`,`zhicheng`,`dianhua`) values (21,'2021-03-10 00:19:57','教师1','123456','教师姓名1','男','http://localhost:8080/ssm7hpe6/upload/jiaoshi_touxiang1.jpg','学院1','职称1','13823888881'),(22,'2021-03-10 00:19:57','教师2','123456','教师姓名2','男','http://localhost:8080/ssm7hpe6/upload/jiaoshi_touxiang2.jpg','学院2','职称2','13823888882'),(23,'2021-03-10 00:19:57','教师3','123456','教师姓名3','男','http://localhost:8080/ssm7hpe6/upload/jiaoshi_touxiang3.jpg','学院3','职称3','13823888883'),(24,'2021-03-10 00:19:57','教师4','123456','教师姓名4','男','http://localhost:8080/ssm7hpe6/upload/jiaoshi_touxiang4.jpg','学院4','职称4','13823888884'),(25,'2021-03-10 00:19:57','教师5','123456','教师姓名5','男','http://localhost:8080/ssm7hpe6/upload/jiaoshi_touxiang5.jpg','学院5','职称5','13823888885'),(26,'2021-03-10 00:19:57','教师6','123456','教师姓名6','男','http://localhost:8080/ssm7hpe6/upload/jiaoshi_touxiang6.jpg','学院6','职称6','13823888886');

/*Table structure for table `kaoqinxinxi` */

DROP TABLE IF EXISTS `kaoqinxinxi`;

CREATE TABLE `kaoqinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `kaoqinneirong` longtext COMMENT '考勤内容',
  `kaoqinzhuangkuang` varchar(200) DEFAULT NULL COMMENT '考勤状况',
  `kaoqinriqi` date DEFAULT NULL COMMENT '考勤日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='考勤信息';

/*Data for the table `kaoqinxinxi` */

insert  into `kaoqinxinxi`(`id`,`addtime`,`mingcheng`,`bianhao`,`xuehao`,`xueshengxingming`,`kaoqinneirong`,`kaoqinzhuangkuang`,`kaoqinriqi`,`gonghao`,`jiaoshixingming`,`userid`) values (91,'2021-03-10 00:19:57','名称1','编号1','学号1','学生姓名1','考勤内容1','正常','2021-03-10','工号1','教师姓名1',1),(92,'2021-03-10 00:19:57','名称2','编号2','学号2','学生姓名2','考勤内容2','正常','2021-03-10','工号2','教师姓名2',2),(93,'2021-03-10 00:19:57','名称3','编号3','学号3','学生姓名3','考勤内容3','正常','2021-03-10','工号3','教师姓名3',3),(94,'2021-03-10 00:19:57','名称4','编号4','学号4','学生姓名4','考勤内容4','正常','2021-03-10','工号4','教师姓名4',4),(95,'2021-03-10 00:19:57','名称5','编号5','学号5','学生姓名5','考勤内容5','正常','2021-03-10','工号5','教师姓名5',5),(96,'2021-03-10 00:19:57','名称6','编号6','学号6','学生姓名6','考勤内容6','正常','2021-03-10','工号6','教师姓名6',6);

/*Table structure for table `kechengbiao` */

DROP TABLE IF EXISTS `kechengbiao`;

CREATE TABLE `kechengbiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `kechengyi` varchar(200) DEFAULT NULL COMMENT '课程一',
  `kechenger` varchar(200) DEFAULT NULL COMMENT '课程二',
  `kechengsan` varchar(200) DEFAULT NULL COMMENT '课程三',
  `kechengsi` varchar(200) DEFAULT NULL COMMENT '课程四',
  `kechengwu` varchar(200) DEFAULT NULL COMMENT '课程五',
  `kechengliu` varchar(200) DEFAULT NULL COMMENT '课程六',
  `beizhu` longtext COMMENT '备注',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='课程表';

/*Data for the table `kechengbiao` */

insert  into `kechengbiao`(`id`,`addtime`,`bianhao`,`banji`,`xuehao`,`xueshengxingming`,`kechengyi`,`kechenger`,`kechengsan`,`kechengsi`,`kechengwu`,`kechengliu`,`beizhu`,`gonghao`,`jiaoshixingming`,`userid`) values (51,'2021-03-10 00:19:57','编号1','班级1','学号1','学生姓名1','课程一1','课程二1','课程三1','课程四1','课程五1','课程六1','备注1','工号1','教师姓名1',1),(52,'2021-03-10 00:19:57','编号2','班级2','学号2','学生姓名2','课程一2','课程二2','课程三2','课程四2','课程五2','课程六2','备注2','工号2','教师姓名2',2),(53,'2021-03-10 00:19:57','编号3','班级3','学号3','学生姓名3','课程一3','课程二3','课程三3','课程四3','课程五3','课程六3','备注3','工号3','教师姓名3',3),(54,'2021-03-10 00:19:57','编号4','班级4','学号4','学生姓名4','课程一4','课程二4','课程三4','课程四4','课程五4','课程六4','备注4','工号4','教师姓名4',4),(55,'2021-03-10 00:19:57','编号5','班级5','学号5','学生姓名5','课程一5','课程二5','课程三5','课程四5','课程五5','课程六5','备注5','工号5','教师姓名5',5),(56,'2021-03-10 00:19:57','编号6','班级6','学号6','学生姓名6','课程一6','课程二6','课程三6','课程四6','课程五6','课程六6','备注6','工号6','教师姓名6',6);

/*Table structure for table `kechengleixing` */

DROP TABLE IF EXISTS `kechengleixing`;

CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='课程类型';

/*Data for the table `kechengleixing` */

insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (31,'2021-03-10 00:19:57','课程类型1'),(32,'2021-03-10 00:19:57','课程类型2'),(33,'2021-03-10 00:19:57','课程类型3'),(34,'2021-03-10 00:19:57','课程类型4'),(35,'2021-03-10 00:19:57','课程类型5'),(36,'2021-03-10 00:19:57','课程类型6');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`kechengshipin`,`kechengxiangqing`,`faburiqi`,`gonghao`,`jiaoshixingming`,`userid`) values (41,'2021-03-10 00:19:57','课程名称1','课程类型1','http://localhost:8080/ssm7hpe6/upload/kechengxinxi_tupian1.jpg','班级1','','课程详情1','2021-03-10','工号1','教师姓名1',1),(42,'2021-03-10 00:19:57','课程名称2','课程类型2','http://localhost:8080/ssm7hpe6/upload/kechengxinxi_tupian2.jpg','班级2','','课程详情2','2021-03-10','工号2','教师姓名2',2),(43,'2021-03-10 00:19:57','课程名称3','课程类型3','http://localhost:8080/ssm7hpe6/upload/kechengxinxi_tupian3.jpg','班级3','','课程详情3','2021-03-10','工号3','教师姓名3',3),(44,'2021-03-10 00:19:57','课程名称4','课程类型4','http://localhost:8080/ssm7hpe6/upload/kechengxinxi_tupian4.jpg','班级4','','课程详情4','2021-03-10','工号4','教师姓名4',4),(45,'2021-03-10 00:19:57','课程名称5','课程类型5','http://localhost:8080/ssm7hpe6/upload/kechengxinxi_tupian5.jpg','班级5','','课程详情5','2021-03-10','工号5','教师姓名5',5),(46,'2021-03-10 00:19:57','课程名称6','课程类型6','http://localhost:8080/ssm7hpe6/upload/kechengxinxi_tupian6.jpg','班级6','','课程详情6','2021-03-10','工号6','教师姓名6',6);

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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-03-10 00:19:57','标题1','简介1','http://localhost:8080/ssm7hpe6/upload/news_picture1.jpg','内容1'),(112,'2021-03-10 00:19:57','标题2','简介2','http://localhost:8080/ssm7hpe6/upload/news_picture2.jpg','内容2'),(113,'2021-03-10 00:19:57','标题3','简介3','http://localhost:8080/ssm7hpe6/upload/news_picture3.jpg','内容3'),(114,'2021-03-10 00:19:57','标题4','简介4','http://localhost:8080/ssm7hpe6/upload/news_picture4.jpg','内容4'),(115,'2021-03-10 00:19:57','标题5','简介5','http://localhost:8080/ssm7hpe6/upload/news_picture5.jpg','内容5'),(116,'2021-03-10 00:19:57','标题6','简介6','http://localhost:8080/ssm7hpe6/upload/news_picture6.jpg','内容6');

/*Table structure for table `qingjiaxinxi` */

DROP TABLE IF EXISTS `qingjiaxinxi`;

CREATE TABLE `qingjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `qingjianeirong` longtext COMMENT '请假内容',
  `qingjiariqi` date DEFAULT NULL COMMENT '请假日期',
  `jieshuriqi` date DEFAULT NULL COMMENT '结束日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='请假信息';

/*Data for the table `qingjiaxinxi` */

insert  into `qingjiaxinxi`(`id`,`addtime`,`bianhao`,`biaoti`,`gonghao`,`jiaoshixingming`,`qingjianeirong`,`qingjiariqi`,`jieshuriqi`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (81,'2021-03-10 00:19:57','编号1','标题1','工号1','教师姓名1','请假内容1','2021-03-10','2021-03-10','学号1','学生姓名1','是','',1),(82,'2021-03-10 00:19:57','编号2','标题2','工号2','教师姓名2','请假内容2','2021-03-10','2021-03-10','学号2','学生姓名2','是','',2),(83,'2021-03-10 00:19:57','编号3','标题3','工号3','教师姓名3','请假内容3','2021-03-10','2021-03-10','学号3','学生姓名3','是','',3),(84,'2021-03-10 00:19:57','编号4','标题4','工号4','教师姓名4','请假内容4','2021-03-10','2021-03-10','学号4','学生姓名4','是','',4),(85,'2021-03-10 00:19:57','编号5','标题5','工号5','教师姓名5','请假内容5','2021-03-10','2021-03-10','学号5','学生姓名5','是','',5),(86,'2021-03-10 00:19:57','编号6','标题6','工号6','教师姓名6','请假内容6','2021-03-10','2021-03-10','学号6','学生姓名6','是','',6);

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-10 00:19:57');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`,`xueyuan`,`zhuanye`) values (11,'2021-03-10 00:19:57','学生1','123456','学生姓名1','男','http://localhost:8080/ssm7hpe6/upload/xuesheng_touxiang1.jpg','13823888881','学院1','专业1'),(12,'2021-03-10 00:19:57','学生2','123456','学生姓名2','男','http://localhost:8080/ssm7hpe6/upload/xuesheng_touxiang2.jpg','13823888882','学院2','专业2'),(13,'2021-03-10 00:19:57','学生3','123456','学生姓名3','男','http://localhost:8080/ssm7hpe6/upload/xuesheng_touxiang3.jpg','13823888883','学院3','专业3'),(14,'2021-03-10 00:19:57','学生4','123456','学生姓名4','男','http://localhost:8080/ssm7hpe6/upload/xuesheng_touxiang4.jpg','13823888884','学院4','专业4'),(15,'2021-03-10 00:19:57','学生5','123456','学生姓名5','男','http://localhost:8080/ssm7hpe6/upload/xuesheng_touxiang5.jpg','13823888885','学院5','专业5'),(16,'2021-03-10 00:19:57','学生6','123456','学生姓名6','男','http://localhost:8080/ssm7hpe6/upload/xuesheng_touxiang6.jpg','13823888886','学院6','专业6');

/*Table structure for table `yujingxinxi` */

DROP TABLE IF EXISTS `yujingxinxi`;

CREATE TABLE `yujingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `yujingneirong` longtext COMMENT '预警内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='预警信息';

/*Data for the table `yujingxinxi` */

insert  into `yujingxinxi`(`id`,`addtime`,`biaoti`,`xuehao`,`xueshengxingming`,`yujingneirong`,`riqi`,`gonghao`,`jiaoshixingming`,`userid`) values (71,'2021-03-10 00:19:57','标题1','学号1','学生姓名1','预警内容1','2021-03-10','工号1','教师姓名1',1),(72,'2021-03-10 00:19:57','标题2','学号2','学生姓名2','预警内容2','2021-03-10','工号2','教师姓名2',2),(73,'2021-03-10 00:19:57','标题3','学号3','学生姓名3','预警内容3','2021-03-10','工号3','教师姓名3',3),(74,'2021-03-10 00:19:57','标题4','学号4','学生姓名4','预警内容4','2021-03-10','工号4','教师姓名4',4),(75,'2021-03-10 00:19:57','标题5','学号5','学生姓名5','预警内容5','2021-03-10','工号5','教师姓名5',5),(76,'2021-03-10 00:19:57','标题6','学号6','学生姓名6','预警内容6','2021-03-10','工号6','教师姓名6',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
