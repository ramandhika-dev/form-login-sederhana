/*
 Navicat Premium Data Transfer

 Source Server         : MySQL - Localhost
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : multi_user

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 09/08/2021 02:51:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_siswa
-- ----------------------------
DROP TABLE IF EXISTS `data_siswa`;
CREATE TABLE `data_siswa`  (
  `id_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nama_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nis_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `alamat_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `notelp_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_siswa
-- ----------------------------
INSERT INTO `data_siswa` VALUES ('1', 'Ramandhika Ilham Pratama', '241231', 'Solo', '087318927351');
INSERT INTO `data_siswa` VALUES ('2', 'Jihad Amrulloh', '512341', 'Solo', '08731892735');
INSERT INTO `data_siswa` VALUES ('3', 'Ibnu Januar', '2094839', 'Surakarta', '08738456438');
INSERT INTO `data_siswa` VALUES ('4', 'Tegar Priambodo', '85739283', 'Sukoharjo', '08748936583');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Ramandhika Ilham Pratama', 'rama', 'rama', 'admin');
INSERT INTO `user` VALUES (2, 'Firgi Handsome', 'firgi', 'firgi', 'pegawai');
INSERT INTO `user` VALUES (3, 'Tegar Priambodo', 'tegar', 'tegar', 'murid');

SET FOREIGN_KEY_CHECKS = 1;
