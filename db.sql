/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - renliziyuanguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`renliziyuanguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `renliziyuanguanli`;

/*Table structure for table `butie` */

DROP TABLE IF EXISTS `butie`;

CREATE TABLE `butie` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `money` decimal(10,4) DEFAULT NULL COMMENT '费用金额  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='离职退休费用';

/*Data for the table `butie` */

insert  into `butie`(`id`,`yonghu_id`,`money`,`create_time`) values (5,4,'98.0000','2021-03-06 19:19:03'),(6,3,'111.0000','2021-03-06 20:15:29');

/*Table structure for table `chuqin` */

DROP TABLE IF EXISTS `chuqin`;

CREATE TABLE `chuqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `today` varchar(200) DEFAULT NULL COMMENT '打卡日期',
  `on_time` timestamp NULL DEFAULT NULL COMMENT '上班打卡时间',
  `down_time` timestamp NULL DEFAULT NULL COMMENT '下班打卡时间',
  `chuqin_types` int(11) DEFAULT NULL COMMENT '打卡类型  ',
  `overtimeNumber` int(11) DEFAULT NULL COMMENT '加班时间(小时)',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='考勤';

/*Data for the table `chuqin` */

insert  into `chuqin`(`id`,`yonghu_id`,`today`,`on_time`,`down_time`,`chuqin_types`,`overtimeNumber`,`create_time`) values (5,1,'2021-03-06','2021-03-06 19:51:46','2021-03-06 19:51:48',6,NULL,'2021-03-06 19:51:46'),(6,2,'2021-03-06','2021-03-06 20:22:08','2021-03-06 20:22:11',6,NULL,'2021-03-06 20:22:08'),(10,5,NULL,NULL,'2021-03-06 20:28:24',2,NULL,NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg'),(6,'homepage',NULL);

/*Table structure for table `cultivate` */

DROP TABLE IF EXISTS `cultivate`;

CREATE TABLE `cultivate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `on_time` timestamp NULL DEFAULT NULL COMMENT '培训开始时间  ',
  `down_time` timestamp NULL DEFAULT NULL COMMENT '培训结束时间  ',
  `day_number` int(11) DEFAULT NULL COMMENT '培训天数  ',
  `cultivate_content` varchar(200) DEFAULT NULL COMMENT '培训内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='培训';

/*Data for the table `cultivate` */

insert  into `cultivate`(`id`,`yonghu_id`,`on_time`,`down_time`,`day_number`,`cultivate_content`,`create_time`) values (9,2,'2021-03-05 00:00:00','2021-03-17 00:00:00',12,'9898\r\n',NULL),(10,1,'2021-03-05 00:00:00','2021-03-21 00:00:00',16,'9*99\r\n',NULL),(11,5,'2021-03-04 00:00:00','2021-03-12 00:00:00',8,'111\r\n',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-06 10:01:32'),(2,'sex_types','性别',2,'女',NULL,'2021-03-06 10:01:32'),(3,'gangwei_types','岗位',1,'普通员工',NULL,'2021-03-06 10:01:32'),(4,'gangwei_types','岗位',2,'小组长',NULL,'2021-03-06 10:01:32'),(5,'gangwei_types','岗位',3,'大组长',NULL,'2021-03-06 10:01:32'),(6,'gangwei_types','岗位',4,'经理',NULL,'2021-03-06 10:01:32'),(7,'gongzhong_types','工种',1,'工种1',NULL,'2021-03-06 10:01:33'),(8,'gongzhong_types','工种',2,'工种2',NULL,'2021-03-06 10:01:33'),(9,'gongzhong_types','工种',3,'工种3',NULL,'2021-03-06 10:01:33'),(10,'gongzhong_types','工种',4,'工种5',NULL,'2021-03-06 10:01:33'),(11,'politics_types','政治面貌',1,'群众',NULL,'2021-03-06 10:01:33'),(12,'politics_types','政治面貌',2,'党员',NULL,'2021-03-06 10:01:33'),(13,'yonghu_types','状态',1,'在职',NULL,'2021-03-06 10:01:33'),(14,'yonghu_types','状态',2,'离职',NULL,'2021-03-06 10:01:33'),(15,'yonghu_types','状态',3,'辞退',NULL,'2021-03-06 10:01:33'),(16,'yonghu_types','状态',4,'退休',NULL,'2021-03-06 10:01:33'),(17,'jixiao_types','绩效类型',1,'优',NULL,'2021-03-06 10:01:33'),(18,'jixiao_types','绩效类型',2,'上',NULL,'2021-03-06 10:01:33'),(19,'jixiao_types','绩效类型',3,'中',NULL,'2021-03-06 10:01:33'),(20,'jixiao_types','绩效类型',4,'下',NULL,'2021-03-06 10:01:33'),(21,'chuqin_types','打卡类型',1,'正常打卡',NULL,'2021-03-06 10:01:33'),(22,'chuqin_types','打卡类型',2,'未打上班卡',NULL,'2021-03-06 10:01:33'),(23,'chuqin_types','打卡类型',3,'未打下班卡',NULL,'2021-03-06 10:01:33'),(24,'chuqin_types','打卡类型',4,'缺勤',NULL,'2021-03-06 10:01:33'),(25,'chuqin_types','打卡类型',5,'加班',NULL,'2021-03-06 10:01:33'),(26,'chuqin_types','打卡类型',6,'迟到',NULL,'2021-03-06 10:01:33'),(27,'chuqin_types','打卡类型',7,'早退',NULL,'2021-03-06 10:01:33'),(28,'jiangcheng_types','奖惩类型',1,'奖励1',NULL,'2021-03-06 10:01:33'),(29,'jiangcheng_types','奖惩类型',2,'奖励2',NULL,'2021-03-06 10:01:33'),(30,'jiangcheng_types','奖惩类型',3,'奖励3',NULL,'2021-03-06 10:01:33'),(31,'jiangcheng_types','奖惩类型',4,'奖励4',NULL,'2021-03-06 10:01:33'),(32,'jiangcheng_types','奖惩类型',5,'奖励5',NULL,'2021-03-06 10:01:33'),(33,'jiangcheng_types','奖惩类型',6,'惩罚1',NULL,'2021-03-06 10:01:33'),(34,'jiangcheng_types','奖惩类型',7,'惩罚2',NULL,'2021-03-06 10:01:33'),(35,'jiangcheng_types','奖惩类型',8,'惩罚3',NULL,'2021-03-06 10:01:33'),(36,'jiangcheng_types','奖惩类型',9,'惩罚4',NULL,'2021-03-06 10:01:33'),(37,'jiangcheng_types','奖惩类型',10,'惩罚5',NULL,'2021-03-06 10:01:33'),(38,'gangwei_types','岗位',99,'111',NULL,'2021-03-06 19:49:50'),(39,'gangwei_types','岗位',98,'87',NULL,'2021-03-06 20:16:10');

/*Table structure for table `jiangcheng` */

DROP TABLE IF EXISTS `jiangcheng`;

CREATE TABLE `jiangcheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiangcheng_types` int(11) DEFAULT NULL COMMENT '奖惩类型 ',
  `jiangcheng_content` varchar(200) DEFAULT NULL COMMENT '详细内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='奖惩';

/*Data for the table `jiangcheng` */

insert  into `jiangcheng`(`id`,`yonghu_id`,`jiangcheng_types`,`jiangcheng_content`,`create_time`) values (9,1,10,'1111\r\n','2021-03-06 13:54:07'),(10,1,10,'111\r\n','2021-03-06 18:53:06'),(11,2,5,'333\r\n','2021-03-06 18:53:21'),(12,5,9,'qq\r\n','2021-03-06 20:12:18');

/*Table structure for table `jixiao` */

DROP TABLE IF EXISTS `jixiao`;

CREATE TABLE `jixiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `month` varchar(200) DEFAULT NULL COMMENT '月份  ',
  `jixiao_types` int(11) DEFAULT NULL COMMENT '绩效类型  ',
  `jixiao_content` varchar(200) DEFAULT NULL COMMENT '绩效内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='绩效';

/*Data for the table `jixiao` */

insert  into `jixiao`(`id`,`yonghu_id`,`month`,`jixiao_types`,`jixiao_content`,`create_time`) values (4,2,'2021-03',3,'11\r\n','2021-03-06 19:00:32'),(5,1,'2021-03',1,'112\r\n','2021-03-06 19:01:47'),(6,1,'2021-01',4,'123\r\n','2021-03-06 19:01:59'),(7,2,'2021-01',2,'aaa\r\n','2021-03-06 20:12:49'),(8,2,'2021-09',4,'ww\r\n','2021-03-06 20:13:35');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','vg1owkzodrtcxn1o6xot3le96cytizgf','2020-12-17 17:09:11','2021-02-03 11:47:45'),(2,1,'1','dangyuan','党员','lrlu96f87l1btzsvhmq0cx248eoowb3t','2020-12-17 17:17:02','2020-12-17 18:17:03'),(3,1,'1','zhibu','支部','w8efhq9xkrz3c3fz6dgztk9trch8dnk8','2020-12-17 17:18:21','2020-12-17 18:18:21'),(4,1608197383165,'001','zhibu','支部','7q33efdzk68psx37dpjek8p8h6uwq7ow','2020-12-17 17:36:24','2021-01-22 10:38:07'),(5,1608198583190,'001','dangyuan','党员','p64k1bj6iwvrditvy4jzanyq44zbq6ed','2020-12-17 17:52:50','2020-12-17 18:52:50'),(6,1608199057450,'003','dangyuan','党员','g26ivuguh0qebktkl0hyj1jymxt2svnn','2020-12-17 18:03:00','2020-12-17 19:03:01'),(7,1608199181916,'004','zhibu','支部','13u05cup4ivaoeyin2shic24xi7oge2f','2020-12-17 18:03:40','2020-12-17 19:03:41'),(8,6,'admin1','users','学院管理员','y46uj8gv4ezllt5p5ufrge1f2bpjv3cs','2021-01-29 14:52:36','2021-02-03 11:47:53'),(9,7,'admin2','users','宿舍管理员','qrx3mk3gn2e5ye90s0ab3gq54nouf8rw','2021-02-02 12:02:15','2021-02-03 11:59:01'),(10,10,'11','users','学生','u31dzvfagnj9tppkjr9nvxtzbhukx5vx','2021-02-02 13:21:38','2021-02-03 12:39:22'),(11,1,'abo','users','学院管理员','f2ul3z66wpuo4a0rl77sk921n9yf8mkb','2021-02-03 10:52:40','2021-02-03 11:52:40'),(12,8,'admin3','users','财务管理员','9ymzdcsml2b96mln6x6cs3i2xi661643','2021-02-03 11:05:39','2021-02-03 15:10:11'),(13,11,'999','users','学生','mya6tv1l67d8s6r6tan7ezy7z4w8lgzw','2021-02-03 11:29:09','2021-02-03 14:45:27'),(14,4,'999','yonghu','用户','1ahtqregeq3nku278h35h1479bb0iy04','2021-02-04 13:40:27','2021-02-23 16:37:12'),(15,1,'99','yonghu','用户','juwn4e57wd8v3rw8gz5tqre45fwhe9zv','2021-02-04 14:52:51','2021-03-06 21:29:59'),(16,7,'admin2','users','初审管理员','3mqhpytktmhhpz29r6dtrbynyvtl525i','2021-02-04 15:50:09','2021-02-22 11:07:10'),(17,3,'77','users','用户','cazhdhc4a059lo3iuewc0qm4d25uw5xi','2021-02-18 09:42:20','2021-03-06 21:04:34'),(18,6,'admin1','users','管理员','mccfc5l7mkt9dfc1djlv5aavxh5exevd','2021-02-19 16:42:49','2021-03-06 21:36:25'),(19,6,'88','yonghu','用户','yw7yxi7we78b3vh9kkvl2sk98m0pl24c','2021-02-20 10:35:45','2021-02-20 11:39:03'),(20,2,'22','yonghu','用户','lsu12lfg0sx2xgfpat6of9r9pw8sxctm','2021-02-20 10:54:51','2021-03-06 21:22:03'),(21,8,'admin3','users','政审管理员','p1vflp8rs17msr05d6vwo622f1bk095c','2021-02-20 11:39:06','2021-02-22 11:09:33'),(22,9,'admin4','users','武装部管理员','0ljqhzh9zhhlq3ftkczskvs9ur5oj1fy','2021-02-20 13:31:20','2021-02-20 19:06:45'),(23,5,'55','yonghu','用户','26kq3aenujf5id2m01h4l94f6vt7xcru','2021-02-20 17:25:51','2021-03-06 21:28:14'),(24,13,'77','users','舍管管理员','gt28ff27xhxzmvjc7oy74s3jgfr7gstx','2021-02-23 15:21:29','2021-02-23 16:21:29'),(25,14,'admin2','users','舍管管理员','wm7ners2segz27n1g4sojmx8ios2d0jk','2021-02-23 16:03:05','2021-02-23 17:03:47'),(26,14,'admin2','users','售票管理员','iwqonlhzy22vjgsh90jxc016vvpr8i1e','2021-02-24 13:54:16','2021-02-24 15:53:23'),(27,15,'admin3','users','检票管理员','97icqm027wx11oba95zlnjl613h2haeq','2021-02-24 13:57:11','2021-02-24 16:26:45'),(28,18,'78','users','售票管理员','bxbiasroyq8hgxljhgygmils0450zegz','2021-02-24 14:53:44','2021-02-24 15:53:45'),(29,12,'99','yonghu','用户','3gh882ib9001cag4ua5bzg0v8h8smi7e','2021-03-01 16:52:26','2021-03-01 18:14:30'),(30,7,'a1','yonghu','用户','m7whd20qf9h0tb8k2tkg0c0v9wa6s3x5','2021-03-01 21:06:49','2021-03-02 12:08:40'),(31,8,'a2','yonghu','用户','94sgqh9kog3hrvaej848n42ujqrpl9pa','2021-03-02 11:09:17','2021-03-02 12:31:59'),(32,13,'a8','yonghu','用户','0tvaz76fd0qt7ngvckt7yqn5hffyesbn','2021-03-02 11:45:55','2021-03-02 14:10:18'),(33,15,'a6','yonghu','用户','u1gplzr2wfrg122mhd8hc9ocr55urh2i','2021-03-02 14:07:02','2021-03-02 15:16:52'),(34,1,'a1','yonghu','学生','jl1r15k475jqu6pvl9qgly3ay60wowgl','2021-03-04 19:48:44','2021-03-05 20:25:30'),(35,2,'a2','yonghu','学生','l32a5gg2vbqx6rcjguhjvsjwqbksu1pg','2021-03-05 09:54:44','2021-03-05 20:24:33'),(36,1,'a33','jiazhang','家长','vllwk0gwkcvlskchdlbd6sjpjme91d5a','2021-03-05 17:58:11','2021-03-05 19:59:27');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `month` varchar(200) DEFAULT NULL COMMENT '月份  ',
  `xinzi_money` decimal(10,4) DEFAULT NULL COMMENT '薪资',
  `butie_money` decimal(10,4) DEFAULT NULL COMMENT '补贴金额',
  `sum_money` decimal(10,4) DEFAULT NULL COMMENT '总金额  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='工资';

/*Data for the table `xinzi` */

insert  into `xinzi`(`id`,`yonghu_id`,`month`,`xinzi_money`,`butie_money`,`sum_money`,`create_time`) values (5,2,'2021-02','10.0000','13.0000','26.0000','2021-03-06 19:07:25'),(6,1,'2021-03','19.0000','112.0000','224.0000','2021-03-06 19:07:44'),(7,2,'2021-03','19.0000','19.0000','38.0000','2021-03-06 19:07:59'),(8,1,'2021-04','17.0000','18.0000','36.0000','2021-03-06 19:08:24'),(9,2,'2021-06','11.0000','987.0000','1974.0000','2021-03-06 19:08:49'),(10,5,'2021-02','99.0000','98.0000','196.0000','2021-03-06 20:13:53');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `id_card` varchar(200) DEFAULT NULL COMMENT '员工编号   ',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `gangwei_types` int(11) DEFAULT NULL COMMENT '岗位  ',
  `gongzhong_types` int(11) DEFAULT NULL COMMENT '工种  ',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `my_file` varchar(200) DEFAULT NULL COMMENT '合同',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `yonghu_types` int(11) DEFAULT NULL COMMENT '人员状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`id_card`,`name`,`phone`,`id_number`,`sex_types`,`gangwei_types`,`gongzhong_types`,`my_photo`,`my_file`,`nation`,`politics_types`,`birthplace`,`yonghu_types`,`create_time`) values (1,'11','123456','1','1','17703789991','410224199610232011',2,2,4,'http://localhost:8080/renliziyuanguanli/file/download?fileName=1615019077042.jpg','http://localhost:8080/renliziyuanguanli/file/download?fileName=1615019082137.jpg','汉1',1,'审犯罪',1,'2021-03-06 10:41:10'),(2,'22','123456','22','22','17703789922','410224199610232022',2,3,3,'http://localhost:8080/renliziyuanguanli/file/download?fileName=1615020983351.jpg','http://localhost:8080/renliziyuanguanli/file/download?fileName=1615020987765.jpg','汉',2,'审犯罪',1,'2021-03-06 16:56:35'),(3,'a3','123456','a3','a3','17703789993','410224199610232013',2,4,4,'http://localhost:8080/renliziyuanguanli/file/download?fileName=1615029431425.jpg','http://localhost:8080/renliziyuanguanli/file/download?fileName=1615029435635.jpg','98',2,'78',4,'2021-03-06 19:17:22'),(4,'a4','123456','a4','a4','17703789994','410224199610232014',2,4,4,'http://localhost:8080/renliziyuanguanli/file/download?fileName=1615029470150.jpg','http://localhost:8080/renliziyuanguanli/file/download?fileName=1615031150958.xls','汉',2,'审犯罪',4,'2021-03-06 19:17:57'),(5,'a7','123456','77','88','17703789997','410224199610232017',2,99,4,'http://localhost:8080/renliziyuanguanli/file/download?fileName=1615032614999.jpg','http://localhost:8080/renliziyuanguanli/file/download?fileName=1615032620268.xls','汉',1,'审犯罪1111',1,'2021-03-06 20:10:31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
