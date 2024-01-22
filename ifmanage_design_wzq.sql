/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : ifmanage_design_wzq

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2022-11-27 00:17:11
*/
DROP DATABASE IF EXISTS ifmanage_design_wzq;
CREATE DATABASE ifmanage_design_wzq CHARSET utf8;
use ifmanage_design_wzq;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accident_record
-- ----------------------------
DROP TABLE IF EXISTS `accident_record`;
CREATE TABLE `accident_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `accident` varchar(50) DEFAULT NULL COMMENT '事故',
  `detail` varchar(255) DEFAULT NULL COMMENT '原因',
  `acc_time` varchar(22) DEFAULT NULL COMMENT '年月',
  `loss` bigint(20) DEFAULT NULL COMMENT '损失',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ;

-- ----------------------------
-- Records of accident_record
-- ----------------------------
INSERT INTO `accident_record` VALUES ('2', '火灾', '某位老人在寝室抽烟，烟头点燃了被褥', '2005-06', '10');
INSERT INTO `accident_record` VALUES ('3', '火灾', '某位老人在寝室抽烟，烟头点燃了被褥', '2006-06', '10');
INSERT INTO `accident_record` VALUES ('4', '火灾', '某位老人在寝室抽烟，烟头点燃了被褥', '2007-06', '10');
INSERT INTO `accident_record` VALUES ('5', '火灾', '某位老人在寝室抽烟，烟头点燃了被褥', '2008-06', '10');
INSERT INTO `accident_record` VALUES ('6', '火灾', '某位老人在寝室抽烟，烟头点燃了被褥', '2009-06', '10');
INSERT INTO `accident_record` VALUES ('7', '火灾', '某位老人在寝室抽烟，烟头点燃了被褥', '2010-06', '10');

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `admin_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  `admin_login` varchar(22) DEFAULT NULL COMMENT '登录名',
  `admin_pwd` varchar(22) DEFAULT '123' COMMENT '密码',
  `admin_name` varchar(22) DEFAULT NULL COMMENT '用户名',
  `admin_tel` bigint(20) DEFAULT '18380565975' COMMENT '电话',
  `admin_sex` varchar(6) DEFAULT '男' COMMENT '性别',
  `power` smallint(6) DEFAULT '1' COMMENT '权限',
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES ('1', 'admin1', '123', '张三', '18380565977', '男', '1');
INSERT INTO `admin_info` VALUES ('2', 'admin2', '123', '王二', '18380565975', '男', '1');
INSERT INTO `admin_info` VALUES ('3', 'admin3', '123', '王八', '18380565975', '男', '1');
INSERT INTO `admin_info` VALUES ('4', 'admin4', '123', '王霸', '18380565975', '男', '1');
INSERT INTO `admin_info` VALUES ('5', 'admin5', '123', '王爸', '18380565975', '男', '1');
INSERT INTO `admin_info` VALUES ('6', 'admin6', '123', '王五', '18380565975', '男', '1');
INSERT INTO `admin_info` VALUES ('7', 'admin7', '123', '王谦', '15567286423', '男', '1');
INSERT INTO `admin_info` VALUES ('8', 'admin8', '123', '王大', '15567286423', '男', '1');
INSERT INTO `admin_info` VALUES ('9', 'admin9', '123', '王谦', '15567286423', '女', '1');
INSERT INTO `admin_info` VALUES ('10', 'admin10', '123', '王世柯', '18563487560', '女', '1');
INSERT INTO `admin_info` VALUES ('11', 'admin11', '123', '何首乌', '18563487560', '男', '1');
INSERT INTO `admin_info` VALUES ('15', 'admin15', '123', '大号', '15567286423', '男', '1');
INSERT INTO `admin_info` VALUES ('16', 'admin16', '123', '王谦', '15567286423', '女', '1');
INSERT INTO `admin_info` VALUES ('18', 'admin18', '123', '王谦', '18563487560', '女', '1');

-- ----------------------------
-- Table structure for check_in
-- ----------------------------
DROP TABLE IF EXISTS `check_in`;
CREATE TABLE `check_in` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `cost` double NOT NULL COMMENT '入住费用',
  `year` varchar(20) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

-- ----------------------------
-- Records of check_in
-- ----------------------------
INSERT INTO `check_in` VALUES ('1', '20000', '2019');
INSERT INTO `check_in` VALUES ('2', '21000', '2020');
INSERT INTO `check_in` VALUES ('3', '22000', '2021');

-- ----------------------------
-- Table structure for dormitory_allocation
-- ----------------------------
DROP TABLE IF EXISTS `dormitory_allocation`;
CREATE TABLE `dormitory_allocation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `dormitory` varchar(20) DEFAULT NULL COMMENT '宿舍',
  `living` smallint(6) DEFAULT '0' COMMENT '0无人居住 1有人居住',
  `name` varchar(22) DEFAULT '---' COMMENT '老人姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ;

-- ----------------------------
-- Records of dormitory_allocation
-- ----------------------------
INSERT INTO `dormitory_allocation` VALUES ('1', 'A-001', '1', '王二的爹');
INSERT INTO `dormitory_allocation` VALUES ('2', 'A-002', '1', '张三的妈');
INSERT INTO `dormitory_allocation` VALUES ('3', 'A-101', '1', '李四的姥');
INSERT INTO `dormitory_allocation` VALUES ('4', 'B-001', '1', '贺涵的爹');
INSERT INTO `dormitory_allocation` VALUES ('5', 'B-200', '1', '周松的爹');
INSERT INTO `dormitory_allocation` VALUES ('6', 'B-201', '1', '黄宇豪的妈');
INSERT INTO `dormitory_allocation` VALUES ('7', 'A-202', '1', '雷浩的妈');
INSERT INTO `dormitory_allocation` VALUES ('8', 'C-303', '0', '---');
INSERT INTO `dormitory_allocation` VALUES ('9', 'C-306', '0', '---');
INSERT INTO `dormitory_allocation` VALUES ('10', 'C-505', '0', '---');
INSERT INTO `dormitory_allocation` VALUES ('11', 'C-505', '1', '---');

-- ----------------------------
-- Table structure for go_out
-- ----------------------------
DROP TABLE IF EXISTS `go_out`;
CREATE TABLE `go_out` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号记录',
  `event` varchar(50) DEFAULT NULL COMMENT '外出事件',
  `event_time` varchar(22) DEFAULT NULL COMMENT '日期',
  `back_time` varchar(22) DEFAULT NULL COMMENT '归来时间',
  `name` varchar(22) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ;

-- ----------------------------
-- Records of go_out
-- ----------------------------
INSERT INTO `go_out` VALUES ('1', '广场舞', '2021-04-07', '2021-04-07', '张三的妈');
INSERT INTO `go_out` VALUES ('2', '广场舞', '2021-04-02', '2021-04-02', '李四的姥');
INSERT INTO `go_out` VALUES ('3', '广场舞', '2021-04-13', '2021-04-13', '王二的爹');
INSERT INTO `go_out` VALUES ('4', '广场舞', '2021-04-12', '2021-04-12', '王太');
INSERT INTO `go_out` VALUES ('5', '广场舞', '2021-04-11', '2021-04-11', '王太');
INSERT INTO `go_out` VALUES ('6', '广场舞', '2021-04-10', '2021-04-10', '王太');
INSERT INTO `go_out` VALUES ('7', '广场舞', '2021-04-09', '2021-04-09', '王太');
INSERT INTO `go_out` VALUES ('10', '广场舞', '2021-04-01', '2021-04-01', '李太');
INSERT INTO `go_out` VALUES ('11', '广场舞', '2021-04-01', '2021-04-01', '雷浩的妈');
INSERT INTO `go_out` VALUES ('12', '广场舞', '2021-04-02', '2021-04-02', '王太');
INSERT INTO `go_out` VALUES ('13', '广场舞', '2021-04-03', '2021-04-03', '王太');
INSERT INTO `go_out` VALUES ('14', '广场舞', '2021-04-04', '2021-04-04', '王太');
INSERT INTO `go_out` VALUES ('15', '广场舞', '2021-04-05', '2021-04-05', '王太');
INSERT INTO `go_out` VALUES ('16', '广场舞', '2021-04-06', '2021-04-06', '王太');
INSERT INTO `go_out` VALUES ('17', '广场舞', '2021-04-14', '2021-04-14', '王太');

-- ----------------------------
-- Table structure for health_records
-- ----------------------------
DROP TABLE IF EXISTS `health_records`;
CREATE TABLE `health_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号记录',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(6) DEFAULT '男' COMMENT '性别',
  `born` varchar(50) DEFAULT NULL COMMENT '出生',
  `height` double DEFAULT NULL COMMENT '身高',
  `weight` double DEFAULT NULL COMMENT '体重',
  `blood_type` varchar(20) DEFAULT NULL COMMENT '血型',
  `allergy` varchar(20) DEFAULT NULL COMMENT '过敏',
  `heart_rate` double DEFAULT NULL COMMENT '心率 60～100次/分',
  `blood_pressure` double DEFAULT NULL COMMENT '血压 90～139mmHg',
  `blood_sugar` double DEFAULT NULL COMMENT '血糖 3.92～7.0mmol/L',
  `smoke` varbinary(6) DEFAULT '否' COMMENT '吸烟',
  `create_time` varchar(50) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ;

-- ----------------------------
-- Records of health_records
-- ----------------------------
INSERT INTO `health_records` VALUES ('1', '王二的爹', '男', '2020-02', '150.6', '53.2', 'O', '无', '66', '90', '4', 0xE590A6, '2021-05-01');
INSERT INTO `health_records` VALUES ('2', '张三的妈', '女', '2021-03', '155.5', '54.2', 'A', '无', '77', '139', '5.6', 0xE590A6, '2021-05-01');
INSERT INTO `health_records` VALUES ('3', '李四的姥', '女', '2021-01', '172.8', '44.2', 'B', '无', '88', '100', '6.4', 0xE590A6, '2021-05-01');
INSERT INTO `health_records` VALUES ('4', '贺涵的爹', '男', '2020-12', '160', '48.6', 'O', '无', '102', '105', '5.9', 0xE590A6, '2021-05-01');
INSERT INTO `health_records` VALUES ('5', '周松的爹', '男', '2021-05', '155.8', '66.5', 'A', '无', '87', '110', '8.6', 0xE590A6, '2021-05-01');
INSERT INTO `health_records` VALUES ('6', '黄宇豪的妈', '女', '2020-04', '160', '100', 'O', '芒果', '0', '0', '2', 0xE698AF, '2021-05-01');
INSERT INTO `health_records` VALUES ('7', '雷浩的妈', '女', '2021-05-01', '160.3', '55.3', 'O', '无', '66', '90', '123', 0xE698AF, '2021-06-04');

-- ----------------------------
-- Table structure for high_risk
-- ----------------------------
DROP TABLE IF EXISTS `high_risk`;
CREATE TABLE `high_risk` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '档案编号',
  `name` varchar(22) DEFAULT NULL COMMENT '姓名',
  `tel` bigint(20) DEFAULT NULL COMMENT '电话',
  `high_case` varchar(22) DEFAULT NULL COMMENT '病例',
  `relatives` varchar(22) DEFAULT NULL COMMENT '亲属',
  `re_tel` bigint(20) DEFAULT NULL COMMENT '亲属电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ;

-- ----------------------------
-- Records of high_risk
-- ----------------------------
INSERT INTO `high_risk` VALUES ('1', '张三的妈', '13369752587', '心脏病', '张三', '15696699394');
INSERT INTO `high_risk` VALUES ('2', '李四的姥', '13369752587', '高血糖', '李四', '15696699394');
INSERT INTO `high_risk` VALUES ('4', '王二的爹', '13369752587', '肝', '王二', '15696699394');
INSERT INTO `high_risk` VALUES ('5', '小明的爹', '12345678911', '心脏做过手术', '小明', '12345678910');

-- ----------------------------
-- Table structure for medication
-- ----------------------------
DROP TABLE IF EXISTS `medication`;
CREATE TABLE `medication` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '药品编号',
  `medication` varchar(50) DEFAULT NULL COMMENT '药名',
  `create_time` date DEFAULT NULL COMMENT '生产时间',
  `expiration_time` date DEFAULT NULL COMMENT '过期时间',
  `cost` double DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ;

-- ----------------------------
-- Records of medication
-- ----------------------------
INSERT INTO `medication` VALUES ('1', '速效救心丸', '2021-01-05', '2021-12-01', '100');
INSERT INTO `medication` VALUES ('2', '止疼药', '2021-01-05', '2021-12-01', '50');
INSERT INTO `medication` VALUES ('3', '风寒止咳颗粒', '2021-01-05', '2021-12-01', '20.5');
INSERT INTO `medication` VALUES ('4', '阿莫西林胶囊', '2021-01-05', '2021-12-01', '50');
INSERT INTO `medication` VALUES ('5', '斯达舒', '2021-01-05', '2021-12-01', '23');
INSERT INTO `medication` VALUES ('6', '阿胶', '2021-01-05', '2021-12-01', '200');

-- ----------------------------
-- Table structure for monthly_catering
-- ----------------------------
DROP TABLE IF EXISTS `monthly_catering`;
CREATE TABLE `monthly_catering` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mon_name` varchar(20) DEFAULT NULL COMMENT '菜肴',
  `cost` int(11) DEFAULT NULL COMMENT '费用',
  `mon_time` varchar(22) DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ;

-- ----------------------------
-- Records of monthly_catering
-- ----------------------------
INSERT INTO `monthly_catering` VALUES ('1', '酸菜鱼', '10', '2021-03');
INSERT INTO `monthly_catering` VALUES ('3', '清蒸鱼', '10', '2021-03');
INSERT INTO `monthly_catering` VALUES ('4', '水煮肉片', '10', '2021-03');
INSERT INTO `monthly_catering` VALUES ('5', '小炒肉', '10', '2021-03');
INSERT INTO `monthly_catering` VALUES ('6', '蒜苗回锅肉', '10', '2021-03');
INSERT INTO `monthly_catering` VALUES ('7', '土豆肉丝', '10', '2021-03');
INSERT INTO `monthly_catering` VALUES ('8', '炒白菜', '10', '2021-03');
INSERT INTO `monthly_catering` VALUES ('10', '东坡肉', '10', '2021-03');
INSERT INTO `monthly_catering` VALUES ('11', '尖椒肉丝', '10', '2021-03');
INSERT INTO `monthly_catering` VALUES ('12', '烤肉', '88', '2021-04');
INSERT INTO `monthly_catering` VALUES ('13', '炒黄瓜', '10', '2021-05');
INSERT INTO `monthly_catering` VALUES ('14', '烤肉', '6', '2021-04');
INSERT INTO `monthly_catering` VALUES ('15', '烤肉', '66', '2021-04');

-- ----------------------------
-- Table structure for nursing
-- ----------------------------
DROP TABLE IF EXISTS `nursing`;
CREATE TABLE `nursing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `nurse_rank` varchar(20) DEFAULT NULL COMMENT '等级',
  `cost` int(11) DEFAULT NULL COMMENT '费用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ;

-- ----------------------------
-- Records of nursing
-- ----------------------------
INSERT INTO `nursing` VALUES ('1', '普通', '1000');
INSERT INTO `nursing` VALUES ('2', '初级', '2000');
INSERT INTO `nursing` VALUES ('3', '中级', '3000');
INSERT INTO `nursing` VALUES ('4', '高级', '4000');
INSERT INTO `nursing` VALUES ('5', '特级', '5000');

-- ----------------------------
-- Table structure for older_info
-- ----------------------------
DROP TABLE IF EXISTS `older_info`;
CREATE TABLE `older_info` (
  `older_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `older_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `older_sex` varchar(6) DEFAULT '男' COMMENT '性别',
  `older_tel` bigint(20) NOT NULL COMMENT '电话',
  `older_addr` varchar(50) DEFAULT NULL COMMENT '住址',
  `older_idcard` varchar(22) DEFAULT NULL COMMENT '身份证号码',
  `in_time` varchar(50) DEFAULT NULL COMMENT '入住时间',
  `out_time` varchar(50) DEFAULT '---' COMMENT '出院时间',
  PRIMARY KEY (`older_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ;

-- ----------------------------
-- Records of older_info
-- ----------------------------
INSERT INTO `older_info` VALUES ('1', '王二的爹', '男', '1236549874', '四川省南充市顺庆区油缘路30号', '510723197711524697', '2021-05-01', '---');
INSERT INTO `older_info` VALUES ('2', '张三的妈', '女', '1236549874', '四川省南充市顺庆区油缘路30号', '510723197711524697', '2021-05-01', '---');
INSERT INTO `older_info` VALUES ('3', '李四的姥', '女', '1236549874', '四川省南充市顺庆区油缘路30号', '510723197711524697', '2021-05-01', '---');
INSERT INTO `older_info` VALUES ('4', '贺涵的爹', '男', '1236549874', '四川省南充市顺庆区油缘路30号', '510723197711524697', '2021-05-01', '---');
INSERT INTO `older_info` VALUES ('5', '周松的爹', '男', '1236549874', '四川省南充市顺庆区油缘路30号', '510723197711524697', '2021-05-01', '---');
INSERT INTO `older_info` VALUES ('6', '黄宇豪的妈', '女', '1236549874', '四川省南充市顺庆区油缘路30号', '510723197711524697', '2021-05-01', '---');
INSERT INTO `older_info` VALUES ('7', '雷浩的妈', '女', '1236549874', '四川省南充市顺庆区油缘路30号', '510723197711524697', '2021-05-01', '---');

-- ----------------------------
-- Table structure for root_info
-- ----------------------------
DROP TABLE IF EXISTS `root_info`;
CREATE TABLE `root_info` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '超级管理员',
  `name` varchar(10) DEFAULT NULL COMMENT '登录名',
  `pwd` varchar(20) DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(20) DEFAULT NULL COMMENT '绰号',
  `power` smallint(6) DEFAULT '0' COMMENT '权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

-- ----------------------------
-- Records of root_info
-- ----------------------------
INSERT INTO `root_info` VALUES ('1', 'root', '123', '超级管理员', '0');

-- ----------------------------
-- Table structure for usr_info
-- ----------------------------
DROP TABLE IF EXISTS `usr_info`;
CREATE TABLE `usr_info` (
  `usr_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `usr_login` varchar(22) DEFAULT NULL COMMENT '登录名',
  `usr_name` varchar(22) DEFAULT NULL COMMENT '用户名',
  `usr_sex` varchar(6) DEFAULT '男' COMMENT '性别',
  `usr_pwd` varchar(22) NOT NULL DEFAULT '123' COMMENT '登录密码',
  `usr_tel` bigint(20) DEFAULT NULL COMMENT '电话',
  `older_name` varchar(22) DEFAULT NULL COMMENT '家属',
  `usr_addr` varchar(22) DEFAULT NULL COMMENT '地址',
  `admin_id` bigint(20) DEFAULT NULL COMMENT '创建者id',
  `power` smallint(6) DEFAULT '2' COMMENT '权限',
  PRIMARY KEY (`usr_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ;

-- ----------------------------
-- Records of usr_info
-- ----------------------------
INSERT INTO `usr_info` VALUES ('1', 'wanger', '王二', '男', '123', '15696699394', '王二的爹', '四川省南充市幸福村', '1', '2');
INSERT INTO `usr_info` VALUES ('2', 'zhangsan', '张三', '男', '123456', '15696699394', '张三的妈', '四川省南充市幸福村', '1', '2');
INSERT INTO `usr_info` VALUES ('3', 'lisi', '李四', '男', '123', '15696699394', '李四的姥', '四川省南充市幸福村', '1', '2');
INSERT INTO `usr_info` VALUES ('4', 'hehan', '贺涵', '男', '123', '15696699394', '贺涵的爹', '四川省南充市幸福村', '1', '2');
INSERT INTO `usr_info` VALUES ('5', 'zhousong', '周松', '男', '123', '15696699394', '周松的爹', '四川省南充市幸福村', '1', '2');
INSERT INTO `usr_info` VALUES ('6', 'huangyuhao', '黄宇豪', '男', '123', '15696699394', '黄宇豪的妈', '四川省南充市幸福村', '1', '2');
INSERT INTO `usr_info` VALUES ('7', 'leihao', '雷浩', '男', '123', '15696699394', '雷浩的妈', '四川省南充市幸福村', '1', '2');
INSERT INTO `usr_info` VALUES ('8', '大郎', '123', '男', '123', '18252369745', '二郎', '住址', null, '2');

-- ----------------------------
-- Table structure for visitor
-- ----------------------------
DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) DEFAULT NULL COMMENT '访客姓名',
  `target` varchar(20) DEFAULT NULL COMMENT '访问对象',
  `vi_time` varchar(20) DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

-- ----------------------------
-- Records of visitor
-- ----------------------------
INSERT INTO `visitor` VALUES ('1', '王二', '王二的爹', '2021-05-01');
INSERT INTO `visitor` VALUES ('2', '李四', '李四的爹', '2021-05-01');
INSERT INTO `visitor` VALUES ('3', '隔壁老王', '张三的妈', '2021-05-01');
