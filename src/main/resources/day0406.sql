/*
Navicat MySQL Data Transfer

Source Server         : 2001JavaA
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : day0406

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2021-04-14 15:04:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_dept`
-- ----------------------------
DROP TABLE IF EXISTS `tb_dept`;
CREATE TABLE `tb_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deptname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dept
-- ----------------------------
INSERT INTO `tb_dept` VALUES ('1', '保卫科');
INSERT INTO `tb_dept` VALUES ('2', '医患科');
INSERT INTO `tb_dept` VALUES ('3', '产科');
INSERT INTO `tb_dept` VALUES ('4', '妇科');
INSERT INTO `tb_dept` VALUES ('5', '儿科');
INSERT INTO `tb_dept` VALUES ('6', '眼科');
INSERT INTO `tb_dept` VALUES ('7', '内科');
INSERT INTO `tb_dept` VALUES ('8', '普外科');
INSERT INTO `tb_dept` VALUES ('9', '皮肤科');
INSERT INTO `tb_dept` VALUES ('10', '肛肠科');
INSERT INTO `tb_dept` VALUES ('11', '口腔科');
INSERT INTO `tb_dept` VALUES ('12', '骨科');
INSERT INTO `tb_dept` VALUES ('13', '办公室');
INSERT INTO `tb_dept` VALUES ('14', '神经外科');
INSERT INTO `tb_dept` VALUES ('15', '神经内科');

-- ----------------------------
-- Table structure for `tb_dept_post`
-- ----------------------------
DROP TABLE IF EXISTS `tb_dept_post`;
CREATE TABLE `tb_dept_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deptid` bigint(20) DEFAULT NULL,
  `postid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dept_post
-- ----------------------------
INSERT INTO `tb_dept_post` VALUES ('19', '2', '1');
INSERT INTO `tb_dept_post` VALUES ('20', '2', '3');
INSERT INTO `tb_dept_post` VALUES ('21', '3', '2');
INSERT INTO `tb_dept_post` VALUES ('22', '3', '4');
INSERT INTO `tb_dept_post` VALUES ('23', '6', '1');
INSERT INTO `tb_dept_post` VALUES ('24', '9', '8');
INSERT INTO `tb_dept_post` VALUES ('25', '9', '9');
INSERT INTO `tb_dept_post` VALUES ('26', '9', '10');
INSERT INTO `tb_dept_post` VALUES ('27', '1', '9');
INSERT INTO `tb_dept_post` VALUES ('28', '1', '10');
INSERT INTO `tb_dept_post` VALUES ('29', '4', '1');

-- ----------------------------
-- Table structure for `tb_meun`
-- ----------------------------
DROP TABLE IF EXISTS `tb_meun`;
CREATE TABLE `tb_meun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `isbutton` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_meun
-- ----------------------------
INSERT INTO `tb_meun` VALUES ('1', '0', '北大国际医院内部管理系统', '../pages/right.html', 'rightFrame', null, '0');
INSERT INTO `tb_meun` VALUES ('2', '1', '系统管理', '../pages/right.html', 'rightFrame', null, '0');
INSERT INTO `tb_meun` VALUES ('3', '1', '药品管理', '../pages/right.html', 'rightFrame', null, '0');
INSERT INTO `tb_meun` VALUES ('4', '1', '个人信息关系', '../pages/right.html', 'rightFrame', null, '0');
INSERT INTO `tb_meun` VALUES ('5', '2', '人员管理', 'user_list.html', 'rightFrame', '../csstree/img/diy/5.png', '0');
INSERT INTO `tb_meun` VALUES ('6', '2', '科室管理', 'dept_list.html', 'rightFrame', null, '0');
INSERT INTO `tb_meun` VALUES ('7', '2', '职位管理', 'post_list.html', 'rightFrame', null, '0');
INSERT INTO `tb_meun` VALUES ('8', '2', '菜单管理', 'meun_list.html', 'rightFrame', null, '0');
INSERT INTO `tb_meun` VALUES ('9', '1', '患者管理', '../pages/fight.html', 'rightFrame', null, '0');
INSERT INTO `tb_meun` VALUES ('10', '1', '排班管理', '../pages/right.html', 'rightFrame', null, '0');
INSERT INTO `tb_meun` VALUES ('11', '5', '科室管理按钮', null, 'target', null, '1');
INSERT INTO `tb_meun` VALUES ('12', '5', '去给用户选择科室', '/user/getUserVoById.do', 'target', null, '1');
INSERT INTO `tb_meun` VALUES ('13', '12', '保存用户选择科室', '/user/saveUserDept.do', 'target', null, '1');
INSERT INTO `tb_meun` VALUES ('15', '5', '人员分配职位按钮', null, 'target', null, '1');
INSERT INTO `tb_meun` VALUES ('16', '5', '去给用户分配职位', '/user/getUserInfo.do', 'target', null, '1');
INSERT INTO `tb_meun` VALUES ('17', '16', '保存用户分配职位', '/user/saveUserPost.do', 'target', null, '1');
INSERT INTO `tb_meun` VALUES ('18', '4', '修改密码', null, 'target', null, '0');
INSERT INTO `tb_meun` VALUES ('19', '4', '个人详情', null, 'target', null, '0');
INSERT INTO `tb_meun` VALUES ('20', '5', '人员列表', '/user/getUserList.do', 'target', null, '1');
INSERT INTO `tb_meun` VALUES ('21', '6', '科室列表', '/dept/getDeptListConn.do', 'target', null, '1');
INSERT INTO `tb_meun` VALUES ('22', '7', '职位列表', '/post/getPostListConn.do', 'target', null, '1');
INSERT INTO `tb_meun` VALUES ('23', '8', '菜单列表', '/meun/getMeunListByPid.do', 'target', null, '1');

-- ----------------------------
-- Table structure for `tb_post`
-- ----------------------------
DROP TABLE IF EXISTS `tb_post`;
CREATE TABLE `tb_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `postname` varchar(255) DEFAULT NULL,
  `postdesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_post
-- ----------------------------
INSERT INTO `tb_post` VALUES ('1', '护士', null);
INSERT INTO `tb_post` VALUES ('2', '护士长', null);
INSERT INTO `tb_post` VALUES ('3', '普通医生', null);
INSERT INTO `tb_post` VALUES ('4', '副主任医师', null);
INSERT INTO `tb_post` VALUES ('5', '主任医师', null);
INSERT INTO `tb_post` VALUES ('6', '副院长', null);
INSERT INTO `tb_post` VALUES ('7', '院长', null);
INSERT INTO `tb_post` VALUES ('8', '主任', null);
INSERT INTO `tb_post` VALUES ('9', '卫门', null);
INSERT INTO `tb_post` VALUES ('10', '保安', null);

-- ----------------------------
-- Table structure for `tb_post_meun`
-- ----------------------------
DROP TABLE IF EXISTS `tb_post_meun`;
CREATE TABLE `tb_post_meun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `postid` bigint(20) DEFAULT NULL,
  `meunid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_post_meun
-- ----------------------------
INSERT INTO `tb_post_meun` VALUES ('17', '2', '1');
INSERT INTO `tb_post_meun` VALUES ('18', '2', '2');
INSERT INTO `tb_post_meun` VALUES ('19', '2', '5');
INSERT INTO `tb_post_meun` VALUES ('20', '2', '8');
INSERT INTO `tb_post_meun` VALUES ('21', '2', '3');
INSERT INTO `tb_post_meun` VALUES ('22', '2', '10');
INSERT INTO `tb_post_meun` VALUES ('49', '1', '1');
INSERT INTO `tb_post_meun` VALUES ('50', '1', '3');
INSERT INTO `tb_post_meun` VALUES ('51', '1', '4');
INSERT INTO `tb_post_meun` VALUES ('52', '1', '9');
INSERT INTO `tb_post_meun` VALUES ('53', '9', '1');
INSERT INTO `tb_post_meun` VALUES ('54', '9', '2');
INSERT INTO `tb_post_meun` VALUES ('55', '9', '5');
INSERT INTO `tb_post_meun` VALUES ('56', '9', '11');
INSERT INTO `tb_post_meun` VALUES ('57', '9', '12');
INSERT INTO `tb_post_meun` VALUES ('58', '9', '13');
INSERT INTO `tb_post_meun` VALUES ('59', '9', '15');
INSERT INTO `tb_post_meun` VALUES ('60', '9', '16');
INSERT INTO `tb_post_meun` VALUES ('61', '9', '17');
INSERT INTO `tb_post_meun` VALUES ('62', '9', '6');
INSERT INTO `tb_post_meun` VALUES ('63', '9', '7');
INSERT INTO `tb_post_meun` VALUES ('64', '9', '8');
INSERT INTO `tb_post_meun` VALUES ('65', '9', '3');
INSERT INTO `tb_post_meun` VALUES ('66', '9', '4');
INSERT INTO `tb_post_meun` VALUES ('67', '9', '18');
INSERT INTO `tb_post_meun` VALUES ('68', '9', '19');
INSERT INTO `tb_post_meun` VALUES ('69', '9', '9');
INSERT INTO `tb_post_meun` VALUES ('70', '9', '10');
INSERT INTO `tb_post_meun` VALUES ('71', '9', '20');
INSERT INTO `tb_post_meun` VALUES ('72', '9', '21');
INSERT INTO `tb_post_meun` VALUES ('73', '9', '22');
INSERT INTO `tb_post_meun` VALUES ('74', '9', '23');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `telphone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `pwdsalt` varchar(255) DEFAULT NULL,
  `accountname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '张无忌', 'BB2146AE684CCE219752D4D6271CCEC4', '23', null, '18888832945', null, null, '1234', 'zhangwuji');
INSERT INTO `tb_user` VALUES ('2', '赵敏', 'BB2146AE684CCE219752D4D6271CCEC4', '22', null, null, null, null, '1234', 'zhaomin');
INSERT INTO `tb_user` VALUES ('3', '周芷若', null, '13', null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('4', '灭绝师太', null, '16', null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('5', '张三张翠山丰', null, '17', null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('6', 'dadad', null, '15', null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('7', 'dsadsad', null, '18', null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('8', 'dsadsad', null, '11', null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('9', 'dsadsad', null, '9', null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('10', 'dsadsad', null, '31', null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('11', 'dsadsad', null, '32', null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('12', 'dsadsad', null, '22', null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('13', 'sadsad', null, '12', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tb_user_dept`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_dept`;
CREATE TABLE `tb_user_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `deptid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_dept
-- ----------------------------
INSERT INTO `tb_user_dept` VALUES ('3', '3', '3');
INSERT INTO `tb_user_dept` VALUES ('10', '5', '10');
INSERT INTO `tb_user_dept` VALUES ('11', '5', '9');
INSERT INTO `tb_user_dept` VALUES ('12', '1', '1');
INSERT INTO `tb_user_dept` VALUES ('13', '2', '4');

-- ----------------------------
-- Table structure for `tb_user_post`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_post`;
CREATE TABLE `tb_user_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `postid` bigint(20) DEFAULT NULL,
  `ismain` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_post
-- ----------------------------
INSERT INTO `tb_user_post` VALUES ('13', '3', '2', '1');
INSERT INTO `tb_user_post` VALUES ('14', '5', '9', '1');
INSERT INTO `tb_user_post` VALUES ('15', '1', '9', '1');
INSERT INTO `tb_user_post` VALUES ('16', '2', '1', '1');
