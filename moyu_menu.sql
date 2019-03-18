/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : 192.168.75.75:3306
 Source Schema         : moyu

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 18/03/2019 16:42:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for moyu_menu
-- ----------------------------
DROP TABLE IF EXISTS `moyu_menu`;
CREATE TABLE `moyu_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menu_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menu_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menu_lever` int(11) NULL DEFAULT NULL,
  `menu_icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(3) NULL DEFAULT NULL COMMENT '排序',
  `is_del` int(11) NULL DEFAULT 0,
  `gtm_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of moyu_menu
-- ----------------------------
INSERT INTO `moyu_menu` VALUES (1, 0, '系统菜单', 'main', '', 'main', 0, 'el-icon-menu', 0, 0, '2019-01-24 08:35:46');
INSERT INTO `moyu_menu` VALUES (2, 1, '商品管理', 'web', NULL, NULL, 1, 'el-icon-goods', 1, 0, '2019-01-24 08:36:13');
INSERT INTO `moyu_menu` VALUES (3, 1, '系统管理', 'web', NULL, NULL, 1, 'el-icon-setting', 2, 0, '2019-01-24 08:38:51');
INSERT INTO `moyu_menu` VALUES (4, 1, '日志数据', 'web', NULL, '', 1, 'el-icon-message', 3, 0, '2019-01-24 08:39:56');
INSERT INTO `moyu_menu` VALUES (5, 2, '产品引进', 'web', NULL, '/productBring', 2, 'el-icon-d-arrow-right', 4, 0, '2019-01-24 08:40:00');
INSERT INTO `moyu_menu` VALUES (6, 2, '产品阅览', 'web', NULL, '/productRead', 2, 'el-icon-d-arrow-right', 5, 0, '2019-01-24 08:40:50');
INSERT INTO `moyu_menu` VALUES (7, 2, '产品订购', 'web', NULL, '/productReserve', 2, 'el-icon-d-arrow-right', 6, 0, '2019-01-24 08:41:00');
INSERT INTO `moyu_menu` VALUES (8, 3, '用户管理', 'web', NULL, '/userManage', 2, 'el-icon-d-arrow-right', 7, 0, '2019-01-24 08:41:09');
INSERT INTO `moyu_menu` VALUES (9, 3, '角色管理', 'web', NULL, '/roleManage', 2, 'el-icon-d-arrow-right', 8, 0, '2019-01-24 08:41:12');
INSERT INTO `moyu_menu` VALUES (10, 3, '菜单管理', 'web', NULL, '/menuManage', 2, 'el-icon-d-arrow-right', 9, 0, '2019-01-24 08:41:18');
INSERT INTO `moyu_menu` VALUES (11, 3, '系统参数', 'web', NULL, '/sysParam', 2, 'el-icon-d-arrow-right', 10, 0, '2019-03-16 12:59:48');

-- ----------------------------
-- Table structure for moyu_role
-- ----------------------------
DROP TABLE IF EXISTS `moyu_role`;
CREATE TABLE `moyu_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_del` int(11) NOT NULL,
  `gtm_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of moyu_role
-- ----------------------------
INSERT INTO `moyu_role` VALUES (8, 'admin', 'gxjTest', 0, '2019-03-17 13:42:26');
INSERT INTO `moyu_role` VALUES (9, 'test', '测试', 0, '2019-03-17 14:32:38');
INSERT INTO `moyu_role` VALUES (10, 'product', '产品', 0, '2019-03-18 01:53:18');
INSERT INTO `moyu_role` VALUES (11, 'operation', '运维', 0, '2019-03-18 01:53:41');
INSERT INTO `moyu_role` VALUES (12, 'com', '公司', 0, '2019-03-18 02:35:55');
INSERT INTO `moyu_role` VALUES (13, 'cn', '特殊', 0, '2019-03-18 02:37:33');

-- ----------------------------
-- Table structure for moyu_role_menu_relation
-- ----------------------------
DROP TABLE IF EXISTS `moyu_role_menu_relation`;
CREATE TABLE `moyu_role_menu_relation`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `role_id` int(8) NULL DEFAULT NULL,
  `menu_id` int(8) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of moyu_role_menu_relation
-- ----------------------------
INSERT INTO `moyu_role_menu_relation` VALUES (1, 13, 4);
INSERT INTO `moyu_role_menu_relation` VALUES (5, 12, 3);
INSERT INTO `moyu_role_menu_relation` VALUES (6, 12, 8);
INSERT INTO `moyu_role_menu_relation` VALUES (7, 12, 9);
INSERT INTO `moyu_role_menu_relation` VALUES (8, 12, 10);
INSERT INTO `moyu_role_menu_relation` VALUES (9, 12, 11);
INSERT INTO `moyu_role_menu_relation` VALUES (10, 12, 4);

-- ----------------------------
-- Table structure for moyu_user
-- ----------------------------
DROP TABLE IF EXISTS `moyu_user`;
CREATE TABLE `moyu_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_no` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lock_account` int(11) NULL DEFAULT NULL COMMENT '锁定次数',
  `salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户地址',
  `state` int(11) NULL DEFAULT NULL,
  `is_del` int(11) NULL DEFAULT 0,
  `gtm_created` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_created` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of moyu_user
-- ----------------------------
INSERT INTO `moyu_user` VALUES (1, 'moyu', '123', '郭子', '13735417360', 0, '1', '杭州市', 10, 0, '2019-01-24 07:13:01', NULL);
INSERT INTO `moyu_user` VALUES (26, '大白', '123', '竟成了', '13', NULL, NULL, '和政治', 10, 0, '2019-03-17 14:52:20', NULL);
INSERT INTO `moyu_user` VALUES (27, 'mo无影yu', '123', '123', '31', NULL, NULL, '31', 20, 0, '2019-03-17 14:53:32', NULL);

-- ----------------------------
-- Table structure for moyu_user_equipment
-- ----------------------------
DROP TABLE IF EXISTS `moyu_user_equipment`;
CREATE TABLE `moyu_user_equipment`  (
  `id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户设备信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for moyu_user_login
-- ----------------------------
DROP TABLE IF EXISTS `moyu_user_login`;
CREATE TABLE `moyu_user_login`  (
  `id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户登录日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for moyu_user_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `moyu_user_role_relation`;
CREATE TABLE `moyu_user_role_relation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户权限关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of moyu_user_role_relation
-- ----------------------------
INSERT INTO `moyu_user_role_relation` VALUES (7, 26, 8);
INSERT INTO `moyu_user_role_relation` VALUES (8, 26, 9);
INSERT INTO `moyu_user_role_relation` VALUES (11, 27, 8);
INSERT INTO `moyu_user_role_relation` VALUES (12, 27, 9);

SET FOREIGN_KEY_CHECKS = 1;
