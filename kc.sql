/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : kc

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 28/04/2022 10:46:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `cid` int(100) NOT NULL AUTO_INCREMENT COMMENT '班级编号  （班级表）',
  `className` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级名称',
  `gid` int(100) NOT NULL COMMENT '年级编号',
  `mid` int(100) NOT NULL COMMENT '专业编号',
  `num` int(100) NOT NULL COMMENT '班级人数',
  `did` int(100) NOT NULL,
  PRIMARY KEY (`cid`) USING BTREE,
  UNIQUE INDEX `cid`(`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, '19电商1班', 1, 1, 60, 1);
INSERT INTO `class` VALUES (2, '19电商2班', 1, 1, 55, 1);
INSERT INTO `class` VALUES (3, '19电商3班', 1, 1, 50, 1);
INSERT INTO `class` VALUES (4, '19电商4班', 1, 1, 45, 1);
INSERT INTO `class` VALUES (5, '20网络1班', 2, 2, 50, 2);
INSERT INTO `class` VALUES (6, '20网络2班', 2, 2, 45, 2);
INSERT INTO `class` VALUES (7, '20网络3班', 2, 3, 50, 2);
INSERT INTO `class` VALUES (8, '20网络4班', 2, 3, 47, 2);
INSERT INTO `class` VALUES (9, '20网络5班', 2, 4, 43, 2);
INSERT INTO `class` VALUES (10, '20网络6班', 2, 4, 54, 2);
INSERT INTO `class` VALUES (11, '20网络7班', 2, 5, 44, 2);
INSERT INTO `class` VALUES (12, '20网络8班', 2, 5, 53, 2);
INSERT INTO `class` VALUES (13, '20网络9班', 2, 6, 53, 1);
INSERT INTO `class` VALUES (14, '21市场1班', 3, 7, 54, 3);
INSERT INTO `class` VALUES (15, '21幼儿1班', 3, 11, 50, 4);
INSERT INTO `class` VALUES (21, '21市场2班', 3, 7, 50, 3);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `courseid` int(10) NOT NULL AUTO_INCREMENT COMMENT '课程编号   （课程表)',
  `courseName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `credit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学分',
  `period` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学时',
  `statu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态 1必修/2选修',
  `ctid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程类型',
  `placeid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上课地点',
  `already` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '已选人数',
  `max` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最大人数',
  `beginTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开始时间',
  `schoolId` int(200) NULL DEFAULT NULL COMMENT '正式上课时间',
  `endTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结束时间',
  `wid` int(10) NULL DEFAULT NULL COMMENT '周时间',
  `teacherId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师编号',
  `scid` int(10) NULL DEFAULT NULL COMMENT '选课状态',
  PRIMARY KEY (`courseid`) USING BTREE,
  UNIQUE INDEX `courseid`(`courseid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '大学国文（上）', '4', '30', '2', '2', '2', '2', '200', '2022-03-01', 1, '2022-06-21', NULL, '20160001', 1);
INSERT INTO `course` VALUES (2, '大学国文（下）', '3', '20', '2', '2', '2', '0', '200', '2022-03-01', 1, '2022-06-21', NULL, '20160001', 1);
INSERT INTO `course` VALUES (3, '智慧海洋', '2', '20', '2', '2', '2', '0', '200', '2022-03-01', 1, '2022-06-21', NULL, '20160002', 1);
INSERT INTO `course` VALUES (4, '军事理论', '2', '100', '2', '4', '5', '0', '200', '2022-03-01', 1, '2022-06-21', NULL, '20160003', 2);
INSERT INTO `course` VALUES (5, '形势', '2', '200', '1', '2', '7', '0', '200', '2022-03-01', 8, '2022-06-21', NULL, '20160004', 2);
INSERT INTO `course` VALUES (6, '就业指导', '2', '100', '1', '2', '6', '0', '200', '2022-03-01', 4, '2022-06-21', NULL, '20160005', 3);
INSERT INTO `course` VALUES (7, '毛概', '3', '200', '1', '2', '6', '0', '200', '2022-03-01', 9, '2022-06-21', NULL, '20160006', 2);
INSERT INTO `course` VALUES (8, '科学启蒙', '2', '150', '2', '1', '1', '0', '200', '2022-03-01', 1, '2022-06-28', NULL, '20160007', 2);
INSERT INTO `course` VALUES (9, 'Java基础', '2', '45', '1', '2', '6', '0', '100', '2022-04-04', 2, '2022-04-20', NULL, '20160008', 2);
INSERT INTO `course` VALUES (10, '美术鉴赏', '2', '258', '2', '7', '7', '0', '200', '2022-03-01', 6, '2022-06-04', NULL, '20160009', NULL);
INSERT INTO `course` VALUES (11, '四大名著鉴赏', '1', '177', '2', '7', '2', '0', '200', '2022-03-01', 1, '2022-06-03', NULL, '20160010', NULL);
INSERT INTO `course` VALUES (12, '《聊斋志异》解读', '1', '155', '2', '2', '2', '0', '200', '2022-03-01', 1, '2022-06-04', NULL, '201600011', NULL);
INSERT INTO `course` VALUES (13, '天文学的奥秘', '2', '77', '2', '3', '3', '0', '200', '2022-03-01', 1, '2022-06-04', NULL, '20160011', NULL);
INSERT INTO `course` VALUES (14, '走进中华优秀传统文化', '2', '140', '2', '2', '2', '0', '200', '2022-03-01', 1, '2022-06-03', NULL, '20160012', NULL);
INSERT INTO `course` VALUES (15, 'cot就业', '2', '5', '2', '5', '1', '0', '200', '2022-03-01', 7, '2022-06-04', NULL, '20160012', NULL);

-- ----------------------------
-- Table structure for coursetype
-- ----------------------------
DROP TABLE IF EXISTS `coursetype`;
CREATE TABLE `coursetype`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ctid` int(10) NULL DEFAULT NULL COMMENT '编号(课程类型表）',
  `typeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型种类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ctid`(`ctid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of coursetype
-- ----------------------------
INSERT INTO `coursetype` VALUES (2, 1, '科学类');
INSERT INTO `coursetype` VALUES (4, 2, '语文类');
INSERT INTO `coursetype` VALUES (9, 3, '天文类');
INSERT INTO `coursetype` VALUES (10, 4, '军事类');
INSERT INTO `coursetype` VALUES (12, 5, '理论类');
INSERT INTO `coursetype` VALUES (13, 6, '鉴赏类');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `did` int(10) NOT NULL AUTO_INCREMENT COMMENT '院系编号  （院系表）',
  `deptName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '院系名称',
  PRIMARY KEY (`did`) USING BTREE,
  UNIQUE INDEX `did`(`did`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '信息工程学院');
INSERT INTO `department` VALUES (2, '计算机学院');
INSERT INTO `department` VALUES (3, '经管学院');
INSERT INTO `department` VALUES (4, '师范学院');
INSERT INTO `department` VALUES (5, '体育学院');

-- ----------------------------
-- Table structure for evaluate
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate`  (
  `erid` int(10) NOT NULL AUTO_INCREMENT COMMENT '  （教评表）',
  `teacherId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师编号',
  `erexam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '讲课质量评分',
  `erexama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '讲课方式评分',
  `erexamb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业技能评分',
  `erexamc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '与学生互动评分',
  `stuID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生编号',
  `courseid` int(11) NULL DEFAULT NULL COMMENT '课程编号',
  `statu` int(255) NULL DEFAULT NULL COMMENT '教评状态 1未评价   2已评价',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价内容',
  PRIMARY KEY (`erid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of evaluate
-- ----------------------------
INSERT INTO `evaluate` VALUES (23, '20160001', '100', '100', '100', '100', '20130001', 1, 1, '不错');
INSERT INTO `evaluate` VALUES (25, '20160001', '100', '100', '100', '100', '20130002', 1, 1, '挺好的');

-- ----------------------------
-- Table structure for examtype
-- ----------------------------
DROP TABLE IF EXISTS `examtype`;
CREATE TABLE `examtype`  (
  `examid` int(10) NOT NULL AUTO_INCREMENT COMMENT '考试编号 (考试类型表)',
  `examtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考试类型  1线上/2线下',
  PRIMARY KEY (`examid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of examtype
-- ----------------------------
INSERT INTO `examtype` VALUES (1, '线上');
INSERT INTO `examtype` VALUES (2, '线下');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `gid` int(100) NOT NULL AUTO_INCREMENT COMMENT '年级编号  （年级表）',
  `gradeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '年级名称',
  `did` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`gid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES (1, '19级', NULL);
INSERT INTO `grade` VALUES (2, '20级', NULL);
INSERT INTO `grade` VALUES (3, '21级', NULL);

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `mid` int(100) NOT NULL AUTO_INCREMENT COMMENT '专业编号   （专业表）',
  `majorName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业名称',
  `did` int(100) NOT NULL COMMENT '院系编号',
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (1, '电子商务', 1);
INSERT INTO `major` VALUES (2, '物联网', 2);
INSERT INTO `major` VALUES (3, '计算机网络技术', 2);
INSERT INTO `major` VALUES (4, '计算机网络技术（android）', 2);
INSERT INTO `major` VALUES (5, '计算机网络技术（java）', 2);
INSERT INTO `major` VALUES (6, '云数据', 1);
INSERT INTO `major` VALUES (7, '市场营销', 3);
INSERT INTO `major` VALUES (11, '幼儿师范', 4);
INSERT INTO `major` VALUES (12, '排球', 5);

-- ----------------------------
-- Table structure for newsedit
-- ----------------------------
DROP TABLE IF EXISTS `newsedit`;
CREATE TABLE `newsedit`  (
  `neid` int(10) NOT NULL AUTO_INCREMENT COMMENT '新闻表',
  `ntitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻标题',
  `ntext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻内容',
  `newsTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布日期',
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  PRIMARY KEY (`neid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of newsedit
-- ----------------------------
INSERT INTO `newsedit` VALUES (1, '新职趣谈', '新乡职业技术学院举办访谈节目', '2022-04-12', '1');
INSERT INTO `newsedit` VALUES (2, '举办体育节', '举办多方面的体育运动增强学生体质', '2022-04-02', '1');
INSERT INTO `newsedit` VALUES (3, '体育测试开始了', '跳远，坐位体前屈，肺活量测试，50米跑，800米跑，1000米跑等等', '2022-04-03', '1');
INSERT INTO `newsedit` VALUES (4, '关于疫情防控重要通知', '根据当前疫情形势依旧严峻，学校每天都要进行核酸检测，非必要禁止外出', '2022-04-04', '1');
INSERT INTO `newsedit` VALUES (5, '新乡职业技术学院云跳绳大赛', '为了培养学生运动积极性，特此举办网上跳绳比赛，同学们可自行下载天天跳绳app参加比赛，望同学们积极参与。', '2022-04-05', '1');
INSERT INTO `newsedit` VALUES (6, '又是一年清明至', ' 又是一年清明至，全校师生通过多种形式祭奠缅怀革命先烈，追思逝去亲人，感受中华传统文化。', '2022-04-05', '1');
INSERT INTO `newsedit` VALUES (7, '我校成功举办第五届辅导员职业素质能力大赛', ' 3月31日，我校第五届辅导员素质能力大赛在实验楼落下帷幕。', '2022-04-05', '1');
INSERT INTO `newsedit` VALUES (8, '信息工程学院|“六大举措”伴师生共度清明', '举措一：“进”宿舍 关心关爱学生；举措二：“调”心理 提振抗疫信心；举措三：“谈”学管 牢记使命担当；举措四：“扫”居所 创造舒适环境；举措五：“祭”英烈 缅怀革命先烈；举措六\"构\"创意设计海报', '2022-04-05', '1');
INSERT INTO `newsedit` VALUES (9, '草坪音乐会', '学校多个社团在西操场举办草坪音乐会', '2022-04-05', '1');
INSERT INTO `newsedit` VALUES (11, '疫情防控演练', '校疫情防控指挥部通知：今天下午15：30至17：00，在全校开展新冠肺炎疫情防控应急处置实战演练。', '2022-04-06', '1');
INSERT INTO `newsedit` VALUES (13, '核酸检测', '今日全员参加核酸检测', '2022-04-16', '1');
INSERT INTO `newsedit` VALUES (14, '返家乡活动总结', '返家乡活动总结', '2022-04-17', '1');
INSERT INTO `newsedit` VALUES (15, '广场舞', '一年一度的广场舞比赛开始了', '2022-04-21', '1');
INSERT INTO `newsedit` VALUES (16, '体育节', '体育节即将举办，各院系之间的都准备了很多活动，其中啦啦操比赛将在明日举行', '2022-04-26', '1');

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place`  (
  `placeid` int(10) NOT NULL AUTO_INCREMENT COMMENT '地点编号(上课地点表)',
  `placeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地点名称',
  PRIMARY KEY (`placeid`) USING BTREE,
  UNIQUE INDEX `placeid`(`placeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES (1, '线上');
INSERT INTO `place` VALUES (2, '1号教学楼6楼阶梯教室');
INSERT INTO `place` VALUES (3, '实验楼2楼阶梯教室');
INSERT INTO `place` VALUES (4, '1号教学楼三楼阶梯教室');
INSERT INTO `place` VALUES (5, '1号教学楼二楼阶梯教室');
INSERT INTO `place` VALUES (6, '实验楼415');
INSERT INTO `place` VALUES (7, '实验楼416');
INSERT INTO `place` VALUES (8, '实验楼417');
INSERT INTO `place` VALUES (9, '实验楼420');
INSERT INTO `place` VALUES (10, '综合楼1202');
INSERT INTO `place` VALUES (11, '综合楼1203');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `rid` int(10) NOT NULL AUTO_INCREMENT COMMENT '角色ID （角色表）',
  `roleName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin');
INSERT INTO `role` VALUES (2, 'teacher');
INSERT INTO `role` VALUES (3, 'student');

-- ----------------------------
-- Table structure for schooltime
-- ----------------------------
DROP TABLE IF EXISTS `schooltime`;
CREATE TABLE `schooltime`  (
  `schoolId` int(10) NOT NULL,
  `schoolTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`schoolId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of schooltime
-- ----------------------------
INSERT INTO `schooltime` VALUES (1, '线上');
INSERT INTO `schooltime` VALUES (2, '全周');
INSERT INTO `schooltime` VALUES (3, '周一下午5-6');
INSERT INTO `schooltime` VALUES (4, '周三下午5-6');
INSERT INTO `schooltime` VALUES (5, '周三下午7-8');
INSERT INTO `schooltime` VALUES (6, '周四下午5-6');
INSERT INTO `schooltime` VALUES (7, '周四下午7-8');
INSERT INTO `schooltime` VALUES (8, '（单周）周五下午5-6');
INSERT INTO `schooltime` VALUES (9, '（双周）周五下午5-6');

-- ----------------------------
-- Table structure for semester
-- ----------------------------
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester`  (
  `semesterid` int(255) NOT NULL COMMENT '学期表',
  `semesterName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`semesterid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of semester
-- ----------------------------
INSERT INTO `semester` VALUES (1, '大一上学期');
INSERT INTO `semester` VALUES (2, '大一下学期');
INSERT INTO `semester` VALUES (3, '大二上学期');
INSERT INTO `semester` VALUES (4, '大二下学期');

-- ----------------------------
-- Table structure for statu
-- ----------------------------
DROP TABLE IF EXISTS `statu`;
CREATE TABLE `statu`  (
  `statuId` int(10) NOT NULL,
  `statuName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`statuId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statu
-- ----------------------------

-- ----------------------------
-- Table structure for stucourse
-- ----------------------------
DROP TABLE IF EXISTS `stucourse`;
CREATE TABLE `stucourse`  (
  `scid` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号  （学生选课表）',
  `stuID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生编号',
  `courseid` int(255) NULL DEFAULT NULL COMMENT '课程编号',
  `cid` int(255) NULL DEFAULT NULL,
  `statu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacherId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`scid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stucourse
-- ----------------------------
INSERT INTO `stucourse` VALUES (50, '20130001', 1, NULL, '1', '20160001');
INSERT INTO `stucourse` VALUES (51, '20130002', 1, NULL, '1', '20160001');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `sid` int(100) NOT NULL AUTO_INCREMENT COMMENT '编号 （学生表）',
  `stuID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `stuName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `national` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  `stupid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `stuPhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `statu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态  1在校/2毕业',
  `stuAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `did` int(100) NOT NULL COMMENT '院系编号',
  `mid` int(100) NOT NULL COMMENT '专业编号',
  `gid` int(100) NOT NULL COMMENT '年级编号',
  `cid` int(100) NOT NULL COMMENT '班级编号',
  `rid` int(100) NOT NULL COMMENT '角色',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '20130001', '小张', '男', '汉', '1', '123456', '1', '南阳', 1, 2, 1, 1, 3);
INSERT INTO `student` VALUES (2, '20130002', '李四', '男', '汉', '1', '123456', '2', '周口', 2, 2, 2, 2, 3);
INSERT INTO `student` VALUES (3, '20130003', '王五', '男', '汉', '1', '123456', '3', '焦作', 1, 1, 1, 1, 3);
INSERT INTO `student` VALUES (4, '20130004', '李六', '男', '汉', '2', '123123', '1', '郑州', 2, 3, 2, 8, 3);
INSERT INTO `student` VALUES (5, '20130005', '小红', '女', '汉', '2', '123567', '2', '周口', 2, 3, 2, 1, 3);
INSERT INTO `student` VALUES (6, '20130006', '小可', '女', '汉', '2', '23456', '1', '郑州', 2, 3, 2, 3, 3);
INSERT INTO `student` VALUES (7, '20130007', '齐军', '男', '汉', '1', '15565807085', '1', '河南省新乡市', 2, 4, 2, 9, 3);

-- ----------------------------
-- Table structure for stupolitics
-- ----------------------------
DROP TABLE IF EXISTS `stupolitics`;
CREATE TABLE `stupolitics`  (
  `stupid` int(10) NOT NULL AUTO_INCREMENT COMMENT '政治面貌编号 (学生政治面貌表）',
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌名称',
  PRIMARY KEY (`stupid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stupolitics
-- ----------------------------
INSERT INTO `stupolitics` VALUES (1, '团员');
INSERT INTO `stupolitics` VALUES (2, '群众');

-- ----------------------------
-- Table structure for stuscore
-- ----------------------------
DROP TABLE IF EXISTS `stuscore`;
CREATE TABLE `stuscore`  (
  `scoreid` int(10) NOT NULL AUTO_INCREMENT,
  `stuID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `courseid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程编号',
  `ctid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程类型',
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '考试成绩',
  `examid` int(10) NOT NULL COMMENT '考试类型',
  `semesterid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学期',
  PRIMARY KEY (`scoreid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stuscore
-- ----------------------------
INSERT INTO `stuscore` VALUES (49, '20130001', '1', '1', '79', 1, '1');
INSERT INTO `stuscore` VALUES (51, '20130002', '1', '1', '92', 1, '1');

-- ----------------------------
-- Table structure for tchclass
-- ----------------------------
DROP TABLE IF EXISTS `tchclass`;
CREATE TABLE `tchclass`  (
  `tcId` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号  （教师授课表）',
  `teacherId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '序号',
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级编号',
  `gid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '年级编号',
  PRIMARY KEY (`tcId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tchclass
-- ----------------------------
INSERT INTO `tchclass` VALUES (1, '20160001', '1', '1');
INSERT INTO `tchclass` VALUES (2, '20160002', '2', '1');
INSERT INTO `tchclass` VALUES (3, '20160003', '3', '1');
INSERT INTO `tchclass` VALUES (4, '20160004', '4', '1');
INSERT INTO `tchclass` VALUES (6, '20160006', '5', '1');
INSERT INTO `tchclass` VALUES (7, '20160005', '6', '1');
INSERT INTO `tchclass` VALUES (9, '20160007', '8', '1');
INSERT INTO `tchclass` VALUES (10, '20160006', '9', '1');
INSERT INTO `tchclass` VALUES (11, '20160007', '4', '1');
INSERT INTO `tchclass` VALUES (13, '20160009', '11', '1');
INSERT INTO `tchclass` VALUES (14, '20160014', '12', '1');
INSERT INTO `tchclass` VALUES (20, '20160001', '2', '1');
INSERT INTO `tchclass` VALUES (21, '20160004', '2', '1');

-- ----------------------------
-- Table structure for tchcourse
-- ----------------------------
DROP TABLE IF EXISTS `tchcourse`;
CREATE TABLE `tchcourse`  (
  `tcsid` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号    （授课表）',
  `teacherId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师编号',
  `cid` int(10) NULL DEFAULT NULL COMMENT '班级编号',
  `courseid` int(10) NULL DEFAULT NULL COMMENT '课程编号',
  PRIMARY KEY (`tcsid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tchcourse
-- ----------------------------

-- ----------------------------
-- Table structure for tchpolitics
-- ----------------------------
DROP TABLE IF EXISTS `tchpolitics`;
CREATE TABLE `tchpolitics`  (
  `tchpid` int(10) NOT NULL AUTO_INCREMENT COMMENT '政治面貌编号 (政治面貌表）',
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌名称',
  PRIMARY KEY (`tchpid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tchpolitics
-- ----------------------------
INSERT INTO `tchpolitics` VALUES (1, '党员');
INSERT INTO `tchpolitics` VALUES (2, '群众');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `tid` int(30) NOT NULL AUTO_INCREMENT COMMENT '序号，自增',
  `teacherId` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '教工号',
  `teacherName` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '性别',
  `tchpid` int(100) NOT NULL COMMENT '政治面貌',
  `teacherPhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `teacherAddress` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `statu` int(200) NULL DEFAULT NULL COMMENT '状态，1在职，2离职',
  `rid` int(255) NOT NULL COMMENT '角色',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '20160001', '范老师', '男', 2, '123456', '郑州', 1, 2);
INSERT INTO `teacher` VALUES (2, '20160002', '李白老师', '男', 1, '123456', '河南', 1, 2);
INSERT INTO `teacher` VALUES (3, '20160003', '白老师', '女', 2, '123456', '新乡', 1, 2);
INSERT INTO `teacher` VALUES (4, '20160004', '杜老师', '男', 1, '7843344', '长安', 1, 2);
INSERT INTO `teacher` VALUES (5, '20160005', '小何老师', '女', 2, '345678', '西安', 1, 2);
INSERT INTO `teacher` VALUES (6, '20160006', '小白老师', '男', 1, '9876543', '延安', 2, 2);
INSERT INTO `teacher` VALUES (12, '20160007', '王老师', '女', 1, '145678', '安阳', 1, 2);
INSERT INTO `teacher` VALUES (13, '20160008', '李老师', '男', 1, '123456', '西安', 1, 2);
INSERT INTO `teacher` VALUES (14, '20160009', '张老师', '男', 1, '123456', '陕西', 1, 2);
INSERT INTO `teacher` VALUES (15, '20160010', '林老师', '女', 1, '123456', '武汉', 1, 2);
INSERT INTO `teacher` VALUES (16, '20160011', '潘老师', '女', 1, '1234567', '商丘', 1, 2);
INSERT INTO `teacher` VALUES (17, '20160012', '何老师', '男', 1, '123456', '湖南', 1, 2);
INSERT INTO `teacher` VALUES (23, '20160013', '赵老师', '男', 1, '123456', '湖南', 1, 2);
INSERT INTO `teacher` VALUES (24, '20160014', '汪老师', '女', 1, '123456', '周口', 1, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(100) NOT NULL AUTO_INCREMENT COMMENT '用户编号  （用户表）',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `statu` int(255) NULL DEFAULT NULL COMMENT '状态 1启用/2禁用',
  `rid` int(255) NOT NULL COMMENT '角色',
  `userRealName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真实姓名',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123', 1, 1, '张三');
INSERT INTO `user` VALUES (2, '20160001', '123', 1, 2, '范老师');
INSERT INTO `user` VALUES (3, '20160002', '123', 1, 2, '李白老师');
INSERT INTO `user` VALUES (4, '20160003', '123', 1, 2, '白老师');
INSERT INTO `user` VALUES (5, '20160004', '123', 1, 2, '杜老师');
INSERT INTO `user` VALUES (6, '20160005', '123', 1, 2, '小何老师');
INSERT INTO `user` VALUES (7, '20160006', '123', 1, 2, '小白老师');
INSERT INTO `user` VALUES (8, '20160007', '123', 1, 2, '王老师');
INSERT INTO `user` VALUES (9, '20160008', '123', 1, 2, '李老师');
INSERT INTO `user` VALUES (10, '20160009', '123', 1, 2, '张老师');
INSERT INTO `user` VALUES (11, '20160010', '123', 1, 2, '林老师');
INSERT INTO `user` VALUES (12, '20160011', '123', 1, 2, '潘老师');
INSERT INTO `user` VALUES (13, '20160012', '123', 1, 2, '何老师');
INSERT INTO `user` VALUES (14, '20160013', '123', 1, 2, '赵老师');
INSERT INTO `user` VALUES (15, '20160014', '123', 1, 2, '汪老师');
INSERT INTO `user` VALUES (16, '20130001', '123', 1, 3, '小张');
INSERT INTO `user` VALUES (17, '20130002', '123', 1, 3, '李四');
INSERT INTO `user` VALUES (18, '20130003', '123', 1, 3, '王五');
INSERT INTO `user` VALUES (19, '20130004', '123', 1, 3, '李六');
INSERT INTO `user` VALUES (20, '20130007', '123', 1, 3, '齐军');
INSERT INTO `user` VALUES (21, '20130005', '123', 1, 3, '小红');
INSERT INTO `user` VALUES (22, '20130006', '小可', 1, 3, '小可');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `rid` int(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1);
INSERT INTO `user_role` VALUES (2, 2, 2);
INSERT INTO `user_role` VALUES (3, 3, 3);

-- ----------------------------
-- Table structure for week
-- ----------------------------
DROP TABLE IF EXISTS `week`;
CREATE TABLE `week`  (
  `wid` int(11) NOT NULL AUTO_INCREMENT COMMENT '周时间表',
  `weekName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '几周',
  PRIMARY KEY (`wid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of week
-- ----------------------------
INSERT INTO `week` VALUES (1, '16周');
INSERT INTO `week` VALUES (2, '18周');

SET FOREIGN_KEY_CHECKS = 1;
