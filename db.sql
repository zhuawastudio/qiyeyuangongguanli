/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qiyeyuangongguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qiyeyuangongguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qiyeyuangongguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `daka` */

DROP TABLE IF EXISTS `daka`;

CREATE TABLE `daka` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '普通员工',
  `daka_photo` varchar(200) DEFAULT NULL COMMENT '打卡照片',
  `daka_content` text COMMENT '打卡备注',
  `insert_time` date DEFAULT NULL COMMENT '打卡日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='打卡';

/*Data for the table `daka` */

insert  into `daka`(`id`,`yuangong_id`,`daka_photo`,`daka_content`,`insert_time`,`create_time`) values (1,1,'http://localhost:8080/qiyeyuangongguanli/upload/1652426915405.jpg','<p>dfsdsfhsf</p>','2022-05-13','2022-05-13 15:28:37');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-07 14:01:38'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-07 14:01:38'),(3,'bumen_types','部门',1,'部门1',NULL,NULL,'2022-03-07 14:01:38'),(4,'bumen_types','部门',2,'部门2',NULL,NULL,'2022-03-07 14:01:38'),(5,'bumen_types','部门',3,'部门3',NULL,NULL,'2022-03-07 14:01:38'),(6,'bumen_types','部门',4,'部门4',NULL,NULL,'2022-03-07 14:01:38'),(7,'shangjipishi_yesno_types','是否接受',1,'待审核',NULL,NULL,'2022-03-07 14:01:38'),(8,'shangjipishi_yesno_types','是否接受',2,'同意',NULL,NULL,'2022-03-07 14:01:38'),(9,'shangjipishi_yesno_types','是否接受',3,'拒绝',NULL,NULL,'2022-03-07 14:01:38'),(10,'shangjipishi_types','上级批示类型',1,'上级批示类型1',NULL,NULL,'2022-03-07 14:01:38'),(11,'shangjipishi_types','上级批示类型',2,'上级批示类型2',NULL,NULL,'2022-03-07 14:01:38'),(12,'shangjipishi_types','上级批示类型',3,'上级批示类型3',NULL,NULL,'2022-03-07 14:01:38'),(13,'shangjipishi_types','上级批示类型',4,'上级批示类型4',NULL,NULL,'2022-03-07 14:01:38'),(14,'gongzuorizhi_types','工作日志类型',1,'工作日志类型1',NULL,NULL,'2022-03-07 14:01:38'),(15,'gongzuorizhi_types','工作日志类型',2,'工作日志类型2',NULL,NULL,'2022-03-07 14:01:39'),(16,'gongzuorizhi_types','工作日志类型',3,'工作日志类型3',NULL,NULL,'2022-03-07 14:01:39'),(17,'gongzuorizhi_types','工作日志类型',4,'工作日志类型4',NULL,NULL,'2022-03-07 14:01:39'),(18,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-07 14:01:39'),(19,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-07 14:01:39'),(20,'bumen_types','部门',5,'部门5',NULL,'','2022-03-07 14:30:27'),(21,'qingjia_types','请假类型',1,'请假类型1',NULL,NULL,'2022-05-13 15:11:22'),(22,'qingjia_types','请假类型',2,'请假类型2',NULL,NULL,'2022-05-13 15:11:22'),(23,'qingjia_yesno_types','申请状态',1,'待审核',NULL,NULL,'2022-05-13 15:11:22'),(24,'qingjia_yesno_types','申请状态',2,'同意申请',NULL,NULL,'2022-05-13 15:11:22'),(25,'qingjia_yesno_types','申请状态',3,'拒绝申请',NULL,NULL,'2022-05-13 15:11:22');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/qiyeyuangongguanli/upload/gonggao1.jpg',1,'2022-03-07 14:03:56','公告详情1','2022-03-07 14:03:56'),(2,'公告名称2','http://localhost:8080/qiyeyuangongguanli/upload/gonggao2.jpg',1,'2022-03-07 14:03:56','公告详情2','2022-03-07 14:03:56'),(3,'公告名称3','http://localhost:8080/qiyeyuangongguanli/upload/gonggao3.jpg',2,'2022-03-07 14:03:56','公告详情3','2022-03-07 14:03:56'),(4,'公告名称4','http://localhost:8080/qiyeyuangongguanli/upload/gonggao4.jpg',2,'2022-03-07 14:03:56','公告详情4','2022-03-07 14:03:56'),(5,'公告名称5','http://localhost:8080/qiyeyuangongguanli/upload/gonggao5.jpg',1,'2022-03-07 14:03:56','公告详情5','2022-03-07 14:03:56');

/*Table structure for table `gongzuorizhi` */

DROP TABLE IF EXISTS `gongzuorizhi`;

CREATE TABLE `gongzuorizhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `gongzuorizhi_name` varchar(200) DEFAULT NULL COMMENT '日志标题  Search111 ',
  `gongzuorizhi_types` int(11) DEFAULT NULL COMMENT '日志类型 Search111',
  `gongzuorizhi_content` text COMMENT '日志详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='工作日志';

/*Data for the table `gongzuorizhi` */

insert  into `gongzuorizhi`(`id`,`yuangong_id`,`gongzuorizhi_name`,`gongzuorizhi_types`,`gongzuorizhi_content`,`insert_time`,`create_time`) values (1,2,'日志标题1',3,'日志详情1','2022-03-07 14:03:56','2022-03-07 14:03:56'),(2,2,'日志标题2',2,'日志详情2','2022-03-07 14:03:56','2022-03-07 14:03:56'),(3,2,'日志标题3',2,'日志详情3','2022-03-07 14:03:56','2022-03-07 14:03:56'),(4,3,'日志标题4',2,'日志详情4','2022-03-07 14:03:56','2022-03-07 14:03:56'),(5,2,'日志标题5',2,'日志详情5','2022-03-07 14:03:56','2022-03-07 14:03:56');

/*Table structure for table `lingdao` */

DROP TABLE IF EXISTS `lingdao`;

CREATE TABLE `lingdao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `lingdao_name` varchar(200) DEFAULT NULL COMMENT '领导姓名 Search111 ',
  `lingdao_phone` varchar(200) DEFAULT NULL COMMENT '领导手机号',
  `lingdao_photo` varchar(200) DEFAULT NULL COMMENT '领导头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门 Search111 ',
  `lingdao_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='领导';

/*Data for the table `lingdao` */

insert  into `lingdao`(`id`,`username`,`password`,`lingdao_name`,`lingdao_phone`,`lingdao_photo`,`sex_types`,`bumen_types`,`lingdao_email`,`create_time`) values (1,'a1','123456','领导姓名1','17703786901','http://localhost:8080/qiyeyuangongguanli/upload/lingdao1.jpg',2,2,'1@qq.com','2022-03-07 14:03:56'),(2,'a2','123456','领导姓名2','17703786902','http://localhost:8080/qiyeyuangongguanli/upload/lingdao2.jpg',2,4,'2@qq.com','2022-03-07 14:03:56'),(3,'a3','123456','领导姓名3','17703786903','http://localhost:8080/qiyeyuangongguanli/upload/lingdao3.jpg',1,4,'3@qq.com','2022-03-07 14:03:56');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qingjia_uuid_number` varchar(200) DEFAULT NULL COMMENT '请假编号 Search111  ',
  `qingjia_name` varchar(200) DEFAULT NULL COMMENT '请假名称 Search111  ',
  `qingjia_types` int(11) NOT NULL COMMENT '请假类型 Search111 ',
  `kaishi_time` timestamp NULL DEFAULT NULL COMMENT '请假开始时间',
  `jieshu_time` timestamp NULL DEFAULT NULL COMMENT '请假结束时间',
  `qingjia_content` text COMMENT '请假内容 ',
  `qingjia_yesno_types` int(11) NOT NULL COMMENT '申请状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '请假申请布时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='请假';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`qingjia_uuid_number`,`qingjia_name`,`qingjia_types`,`kaishi_time`,`jieshu_time`,`qingjia_content`,`qingjia_yesno_types`,`insert_time`,`create_time`) values (1,'1652426756284','标题111',1,'2022-05-13 00:00:00','2022-05-21 00:00:00','<p>的神挡杀神</p>',2,'2022-05-13 15:26:12','2022-05-13 15:26:12');

/*Table structure for table `shangjipishi` */

DROP TABLE IF EXISTS `shangjipishi`;

CREATE TABLE `shangjipishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `lingdao_id` int(11) DEFAULT NULL COMMENT '领导',
  `shangjipishi_name` varchar(200) DEFAULT NULL COMMENT '批示标题  Search111 ',
  `shangjipishi_types` int(11) DEFAULT NULL COMMENT '批示类型 Search111',
  `shangjipishi_file` varchar(200) DEFAULT NULL COMMENT '批示附件',
  `shangjipishi_content` text COMMENT '批示内容 ',
  `shangjipishi_yesno_types` int(11) DEFAULT NULL COMMENT '是否接受 Search111',
  `shangjipishi_yesno_text` text COMMENT '理由',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='上级批示';

/*Data for the table `shangjipishi` */

insert  into `shangjipishi`(`id`,`yuangong_id`,`lingdao_id`,`shangjipishi_name`,`shangjipishi_types`,`shangjipishi_file`,`shangjipishi_content`,`shangjipishi_yesno_types`,`shangjipishi_yesno_text`,`create_time`) values (6,1,1,'标题1111',4,'http://localhost:8080/qiyeyuangongguanli/upload/1646634719009.rar','<p>内容12131</p>',1,'','2022-03-07 14:32:02'),(7,1,1,'标题11231',2,'http://localhost:8080/qiyeyuangongguanli/upload/1646634736470.rar','<p>swal;dkjsad</p>',3,'时间太忙了','2022-03-07 14:32:19');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','1990nu0dqhya4pomr2fb5887wcet1n4y','2022-03-07 14:09:18','2022-05-13 16:22:34'),(2,1,'a1','lingdao','领导','o2mdvhfxux0tvyojtfqlemrlo05cyjwf','2022-03-07 14:31:22','2022-05-13 16:26:32'),(3,1,'a1','yuangong','普通员工','59itkb6p78i5nphkkyp77m2fi3w0270k','2022-03-07 14:32:27','2022-05-13 16:28:30');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '普通员工',
  `xinzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '薪资编号 Search111 ',
  `xinzi_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111 ',
  `xinzi_month` varchar(200) DEFAULT NULL COMMENT '月份 Search111 ',
  `jiben_jine` decimal(10,2) DEFAULT NULL COMMENT '基本工资',
  `jiangjin_jine` decimal(10,2) DEFAULT NULL COMMENT '奖金',
  `jixiao_jine` decimal(10,2) DEFAULT NULL COMMENT '绩效',
  `butie_jine` decimal(10,2) DEFAULT NULL COMMENT '补贴',
  `kaoqinkoujian_jine` decimal(10,2) DEFAULT NULL COMMENT '考勤扣减',
  `shifa_jine` decimal(10,2) DEFAULT NULL COMMENT '实发',
  `xinzi_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='薪资';

/*Data for the table `xinzi` */

insert  into `xinzi`(`id`,`yuangong_id`,`xinzi_uuid_number`,`xinzi_name`,`xinzi_month`,`jiben_jine`,`jiangjin_jine`,`jixiao_jine`,`butie_jine`,`kaoqinkoujian_jine`,`shifa_jine`,`xinzi_content`,`insert_time`,`create_time`) values (1,1,'1652426671812','普通员工1的5月份工资','2022-05','300.00','400.00','500.00','600.00','100.00','1700.00','<p>大叔大婶</p>','2022-05-13 15:25:00','2022-05-13 15:25:00');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '普通员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '普通员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '普通员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '普通员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门 Search111 ',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='普通员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`bumen_types`,`yuangong_email`,`create_time`) values (1,'a1','123456','普通员工姓名1','17703786901','410224199610232001','http://localhost:8080/qiyeyuangongguanli/upload/yuangong1.jpg',1,2,'1@qq.com','2022-03-07 14:03:56'),(2,'a2','123456','普通员工姓名2','17703786902','410224199610232002','http://localhost:8080/qiyeyuangongguanli/upload/yuangong2.jpg',2,1,'2@qq.com','2022-03-07 14:03:56'),(3,'a3','123456','普通员工姓名3','17703786903','410224199610232003','http://localhost:8080/qiyeyuangongguanli/upload/yuangong3.jpg',1,3,'3@qq.com','2022-03-07 14:03:56');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
