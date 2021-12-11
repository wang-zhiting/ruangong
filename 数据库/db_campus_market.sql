/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50514
 Source Host           : localhost:3306
 Source Schema         : db_campus_market

 Target Server Type    : MySQL
 Target Server Version : 50514
 File Encoding         : 65001

 Date: 11/12/2021 11:35:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ylrc_comment
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_comment`;
CREATE TABLE `ylrc_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reply_to` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_id` bigint(20) NULL DEFAULT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKd01gnchhuj06oumqxrikccc3r`(`goods_id`) USING BTREE,
  INDEX `FKswirics8hhydki5ff0emtmbii`(`student_id`) USING BTREE,
  CONSTRAINT `FKd01gnchhuj06oumqxrikccc3r` FOREIGN KEY (`goods_id`) REFERENCES `ylrc_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKswirics8hhydki5ff0emtmbii` FOREIGN KEY (`student_id`) REFERENCES `ylrc_studnet` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_comment
-- ----------------------------
INSERT INTO `ylrc_comment` VALUES (3, '2020-04-12 21:44:43', '2020-04-12 21:44:43', '现在还能用嘛？', NULL, 12, 5);
INSERT INTO `ylrc_comment` VALUES (4, '2020-04-12 21:47:00', '2020-04-12 21:47:00', '应该有的吧？', '猿来入此', 12, 5);
INSERT INTO `ylrc_comment` VALUES (5, '2020-04-12 22:07:22', '2020-04-12 22:07:22', '回复：“你好，现在还有货嘛？”\n应该没有了，这个很抢手的呀，你要抓紧才行。', '猿来入此', 12, 5);
INSERT INTO `ylrc_comment` VALUES (6, '2020-04-12 22:08:09', '2020-04-12 22:08:09', '回复：“你好价格还能优惠点嘛？”<br>这个价格已经很公道了呀。', '猿来入此', 12, 5);
INSERT INTO `ylrc_comment` VALUES (7, '2020-04-12 22:08:57', '2020-04-12 22:08:57', '回复：“现在还能用嘛？”<br>应该没问题的，这个机子很皮实的。', '158549530922', 12, 5);
INSERT INTO `ylrc_comment` VALUES (8, '2020-04-12 22:11:54', '2020-04-12 22:11:54', '你好，价格能再优惠吗？', NULL, 13, 5);
INSERT INTO `ylrc_comment` VALUES (9, '2020-04-12 22:12:59', '2020-04-12 22:12:59', '回复：“你好，价格能再优惠吗？”<br>亲，这个价格已经很优惠了哦，我这个电脑配置很高的，4g内存 320g硬盘，独立集成双显卡，疫情期间给孩子上网课，看看视频，办公学习都不错，双侧立体声音响，15.6寸大屏幕。', '起名字真难', 13, 3);
INSERT INTO `ylrc_comment` VALUES (10, '2020-04-15 22:32:37', '2020-04-15 22:32:37', '看上去不错哦！', NULL, 31, 3);

-- ----------------------------
-- Table structure for ylrc_database_bak
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_database_bak`;
CREATE TABLE `ylrc_database_bak`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `filename` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filepath` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_database_bak
-- ----------------------------
INSERT INTO `ylrc_database_bak` VALUES (10, '2020-03-22 19:36:47', '2020-03-22 19:36:47', 'db_boot_base_20200322193647.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (11, '2020-03-22 19:37:54', '2020-03-22 19:37:54', 'db_boot_base_20200322193754.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (12, '2020-03-22 19:40:04', '2020-03-22 19:40:04', 'db_boot_base_20200322194004.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (14, '2020-03-22 19:40:14', '2020-03-22 19:40:14', 'db_boot_base_20200322194014.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (15, '2020-03-22 19:40:19', '2020-03-22 19:40:19', 'db_boot_base_20200322194019.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (17, '2020-03-22 19:43:34', '2020-03-22 19:43:34', 'db_boot_base_20200322194334.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (18, '2020-03-22 19:43:39', '2020-03-22 19:43:39', 'db_boot_base_20200322194339.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (20, '2020-03-22 19:43:49', '2020-03-22 19:43:49', 'db_boot_base_20200322194349.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (21, '2020-03-22 19:43:54', '2020-03-22 19:43:54', 'db_boot_base_20200322194354.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (22, '2020-03-22 19:43:59', '2020-03-22 19:43:59', 'db_boot_base_20200322194359.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (23, '2020-03-22 19:44:04', '2020-03-22 19:44:04', 'db_boot_base_20200322194404.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (24, '2020-03-22 19:44:09', '2020-03-22 19:44:09', 'db_boot_base_20200322194409.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (25, '2020-03-22 19:44:14', '2020-03-22 19:44:14', 'db_boot_base_20200322194414.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (26, '2020-03-22 19:44:19', '2020-03-22 19:44:19', 'db_boot_base_20200322194419.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (27, '2020-03-22 19:44:24', '2020-03-22 19:44:24', 'db_boot_base_20200322194424.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (28, '2020-03-22 19:44:29', '2020-03-22 19:44:29', 'db_boot_base_20200322194429.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (29, '2020-03-22 19:44:34', '2020-03-22 19:44:34', 'db_boot_base_20200322194434.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (30, '2020-03-22 19:44:39', '2020-03-22 19:44:39', 'db_boot_base_20200322194439.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES (31, '2020-03-23 17:46:49', '2020-03-23 17:46:49', 'db_boot_base_20200323174649.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');

-- ----------------------------
-- Table structure for ylrc_friend_link
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_friend_link`;
CREATE TABLE `ylrc_friend_link`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_friend_link
-- ----------------------------

-- ----------------------------
-- Table structure for ylrc_goods
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_goods`;
CREATE TABLE `ylrc_goods`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `buy_price` float NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flag` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recommend` int(11) NOT NULL,
  `sell_price` float NOT NULL,
  `status` int(11) NOT NULL,
  `goods_category_id` bigint(20) NULL DEFAULT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  `view_number` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKjtyl6pmb9j4aj64sm54xi1hbi`(`goods_category_id`) USING BTREE,
  INDEX `FKf68a0a9u8u8hqckg0ycnjarv6`(`student_id`) USING BTREE,
  CONSTRAINT `FKf68a0a9u8u8hqckg0ycnjarv6` FOREIGN KEY (`student_id`) REFERENCES `ylrc_studnet` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKjtyl6pmb9j4aj64sm54xi1hbi` FOREIGN KEY (`goods_category_id`) REFERENCES `ylrc_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_goods
-- ----------------------------
INSERT INTO `ylrc_goods` VALUES (5, '2020-04-06 21:54:28', '2021-12-08 13:44:28', 58, 'Big Nerd Ranch是美国一家专业的移动开发技术培训机构。本书主要以其Android训练营教学课程为基础，融合了几位作者多年的心得体会，是一本完全面向实战的Android 编程权威指南。全书共32章，详细介绍了七个Android应用的开发过程。通过这些精心设计的应用，读者可掌握很多重要的理论知识和开发技巧，获得宝贵的开发经验。第4版较之前版本做了重大更新，每一章的内容都做了修改；同时，开发语言从Java换成了Kotlin，全面引入了Android Jetpack组件库并开始使用第三方库。有意向的请联系我。', 0, 'Android编程权威指南（第4版）', '20211208/1638941962492.jpg', 0, 15, 1, 4, 2, 26);
INSERT INTO `ylrc_goods` VALUES (6, '2020-04-11 15:13:43', '2021-12-09 21:13:21', 69, '本书结合C++和OpenCV全面讲解计算机视觉编程，不仅涵盖计算机视觉和图像处理的基础知识，而且通过完整示例讲解OpenCV的重要类和函数。主要内容包括OpenCV库的安装和部署、图像增强、像素操作、图形分析等各种技术，并且详细介绍了如何处理来自文件或摄像机的视频，以及如何检测和跟踪移动对象。\r\n\r\n本书适合计算机视觉新手、专业软件开发人员、学生，以及所有想要了解图像处理和计算机视觉技术的人员学习参考。 \r\n有意向请联系我，谢谢！', 0, 'OpenCV计算机视觉编程攻略', '20211208/1638942222295.jpg', 1, 16, 1, 22, 2, 2);
INSERT INTO `ylrc_goods` VALUES (10, '2020-04-11 16:55:10', '2021-12-09 20:26:23', 25, 'Big Nerd Ranch是美国一家专业的移动开发技术培训机构，本书是其培训教材。书中系统讲解了在iOS和macOS平台上，使用苹果的Swift语言开发iPhone、iPad和Mac应用的基本概念和编程技巧。主要围绕使用Swift语言进行iOS和macOS开发，结合大量代码示例，教会读者利用高级iOS和macOS特性开发真实的应用。\r\n本书读者对象为iOS和macOS平台移动开发人员。\r\n对开发苹果生态软件有兴趣的可以联系我！', 0, 'Swift编程权威指南（第2版）', '20211209/1639052715327.jpg', 0, 5, 1, 5, 3, 8);
INSERT INTO `ylrc_goods` VALUES (11, '2020-04-11 16:56:13', '2021-12-09 20:31:35', 49, '本书针对初学者，从变量、类型、函数、闭包等基本概念入手，结合Swift 示例，一步步指导读者使用Swift 开发App。书的最后给出了一个App 开发全流程。\r\n本书适合任何想学习Swift 的人员参考。\r\n有意愿的请联系我！', 0, 'Swift基础教程（第2版）', '20211209/1639053066554.jpg', 0, 25, 1, 5, 3, 0);
INSERT INTO `ylrc_goods` VALUES (12, '2020-04-11 16:57:12', '2021-12-09 21:13:39', 119, '本书是iOS应用开发基础教程，内容翔实，语言生动。作者结合大量实例，使用Swift语言循序渐进地讲解了适用于iPhone/iPad开发的基本流程。新版介绍强大的iOS 10操作系统，涵盖Xcode 8的新功能，书中所有案例也全部重新编写。', 0, '精通iOS开发（第8版）', '20211209/1639053278439.jpg', 0, 50, 1, 6, 3, 47);
INSERT INTO `ylrc_goods` VALUES (13, '2020-04-11 21:05:32', '2021-12-09 21:13:04', 69, '本书介绍了58种必不可少的交互设计模式，帮助你处理Android应用程序设计最具挑战性的方方面面，以及同样重要的12种反模式，描述了在追求客户完善、愉悦和享受的过程中的常见错误，非常适合各层次的Android应用开发者、UI设计师阅读、参考。', 0, 'Android应用UI设计模式', '20211209/1639053356781.jpg', 0, 30, 1, 7, 3, 8);
INSERT INTO `ylrc_goods` VALUES (14, '2020-04-11 21:08:41', '2021-12-09 21:12:59', 129, '本书内容包括新手入门、原型和游戏测试、有意义的抉择、描述游戏要素、游戏理论与理性决策、游戏中的人类行为、游戏设计工具，以及游戏设计这门生意。本书清晰地介绍了游戏设计的规律，游戏设计人员的具体职责，并指导他们如何尽快融入这个行业。作者通过大量实际案例来介绍原型设计、游戏策略、玩法等内容，并给出了其他游戏设计书中通常会忽略的关于认知负荷和人性决定的相关内容，还概述了多种设计工具的使用以及游戏的商业市场情况。', 0, '游戏设计入门：理解玩家思维', '20211209/1639053813967.jpg', 0, 60, 1, 41, 3, 8);
INSERT INTO `ylrc_goods` VALUES (19, '2020-04-11 21:21:08', '2021-12-09 21:12:42', 80, 'Unity 是一款市场占有率非常高的商业游戏引擎，横跨25 个主流游戏平台。本书基于Unity 2018，结合2D 游戏开发和3D 游戏开发的案例，详细介绍了它的方方面面，内容涉及编辑器、游戏脚本、UGUI 游戏界面、动画系统、持久化数据、静态对象、多媒体、资源加载与优化、自动化与打包等。\r\n本书适合初学者或者有一定基础的开发者阅读。', 0, 'Unity 3D游戏开发（第2版）', '20211209/1639053910650.jpg', 0, 40, 1, 38, 3, 2);
INSERT INTO `ylrc_goods` VALUES (20, '2020-04-11 21:22:10', '2021-12-09 20:47:18', 45, '本书从零开始，循序渐进地讲解了如何使用Cocos2d-x引擎开发移动平台游戏。全面、基础并非常具有实战性。由国内资深一线开发工程师撰写。书中系统地讲解了Cocos2d-x引擎的基本功能、使用方法、高级特性、开发技巧及性能优化，在此基础上本书还提供了一个完整的游戏开发实践过程，详细讲解了此游戏从策划到投放市场创造利润的整个流程。', 0, 'Cocos2d-x入门经典', '20211209/1639054016836.jpg', 0, 20, 1, 39, 3, 4);
INSERT INTO `ylrc_goods` VALUES (31, '2020-04-12 00:07:24', '2021-12-09 21:12:49', 79, '了解数据结构与算法是透彻理解计算机科学的前提。随着Python日益广泛的应用，Python程序员需要实现与传统的面向对象编程语言相似的数据结构与算法。本书是用Python描述数据结构与算法的开山之作，汇聚了作者多年的实战经验，向读者透彻讲解在Python环境下，如何通过一系列存储机制高效地实现各类算法。通过本书，读者将深刻理解Python数据结构、递归、搜索、排序、树与图的应用，等等。', 0, 'Python数据结构算法分析 第二版', '20211209/1639055102862.jpg', 0, 35, 1, 9, 4, 45);
INSERT INTO `ylrc_goods` VALUES (32, '2021-12-09 21:07:54', '2021-12-09 21:13:12', 45, '本书总结并生动地阐述了成为高效的开发人员所需具备的 45个习惯、思想观念和方法，涵盖了软件开发进程、编程和调试工作、开发者态度、项目和团队管理以及持续学习等几个方面。\r\n本书适合所有程序员阅读。', 0, '高效程序员的45个习惯', '20211209/1639055242396.jpg', 0, 20, 1, 44, 4, 1);
INSERT INTO `ylrc_goods` VALUES (33, '2021-12-09 21:08:41', '2021-12-09 21:08:41', 149, '本书是原谷歌资深面试官的经验之作，层层紧扣程序员面试的每一个环节，全面而详尽地介绍了程序员应当如何应对面试，才能在面试中脱颖而出。内容主要涉及面试流程解析，面试官的幕后决策及可能提出的问题，面试前的准备工作，对面试结果的处理，以及出自微软、苹果、谷歌等多家知名公司的189道编程面试题及详细解决方案。第6版修订了上一版中一些题目的解法，为各章新增了介绍性内容，加入了更多的算法策略，并增添了对所有题目的提示信息。', 0, '程序员面试金典（第6版）', '20211209/1639055300540.jpg', 0, 75, 1, 43, 4, 0);
INSERT INTO `ylrc_goods` VALUES (34, '2021-12-09 21:09:25', '2021-12-09 21:12:55', 35, '本书共分为3个部分。第一部分从有趣且锻炼头脑的谜题入手，继而给出解题思路和详细答案，更有“热身问题”给大家提供充分的思考空间。第二部分综合了不同类型的谜题，如数独、调度问题及概率题等。神秘的第三部分带领大家不断历险，开动脑筋，解决大量密码及银行账户等方面的信息。几十篇简洁的小谜题不仅充分锻炼了我们的思维方式，更为提高面试成功率奠定了基础。\r\n本书不仅适合程序员阅读，更是谜题爱好者的饕餮盛宴。', 0, '程序员面试逻辑题解析', '20211209/1639055343980.jpg', 0, 15, 1, 43, 4, 1);
INSERT INTO `ylrc_goods` VALUES (35, '2021-12-09 21:12:12', '2021-12-09 21:12:52', 59, '本书针对IT行业产品经理，以面试为主线，首先介绍产品经理职责、谷歌微软等知名企业中产品经理的作用和要求，然后采访了几位知名企业的产品经理，介绍成为产品经理的基本素质，之后是从简历准备到各公司面试要点到具体面试问题分析，这部分是本书的重点内容。', 0, '产品经理面试宝典', '20211209/1639055511849.jpg', 0, 25, 1, 43, 4, 1);
INSERT INTO `ylrc_goods` VALUES (36, '2021-12-09 21:39:20', '2021-12-09 21:39:20', 108, '本书是针对所有层次Python读者而作的Python入门书。全书分两部分：第一部分介绍用Python编程所必须了解的基本概念，包括强大的Python库和工具，以及列表、字典、if语句、类、文件与异常、代码测试等内容；第二部分将理论付诸实践，讲解如何开发三个项目，包括简单的2D游戏、利用数据生成交互式的信息图以及创建和定制简单的Web应用，并帮助读者解决常见编程问题和困惑。第2版进行了全面修订，简化了Python安装流程，新增了f字符串、get()方法等内容，并且在项目中使用了Plotly库以及新版本的Django和Bootstrap，等等。\r\n百万读者的必读入门书！', 0, 'Python编程从入门到实践 第2版', '20211209/1639057067238.jpg', 0, 50, 1, 57, 5, 0);
INSERT INTO `ylrc_goods` VALUES (37, '2021-12-09 21:40:46', '2021-12-09 21:40:46', 59, '本书深入Java虚拟机底层原理，对JVM内存管理中的垃圾回收算法G1GC进行了详细解读。全书分为“算法篇”和“实现篇”两大部分：前一部分主要介绍G1GC的算法原理，内容包括G1GC的并发标记、转移功能、软实时性的实现和分代G1GC模式；后一部分聚焦算法篇中没有详细讲解的实现部分，基于HotSpotVM源码，讲解对象管理功能、内存分配器的机制、线程管理方法和G1GC的具体实现。\r\n本书以图配文，通俗易懂，既系统介绍了G1GC的基础算法，又贴近现实，剖析了实用JVM中的G1GC实现，同时还包含了作者对G1GC的研究成果和独到见解，是深入理解JVM和G1GC机制的佳作。', 0, '深入Java虚拟机', '20211209/1639057193249.jpg', 0, 25, 1, 52, 5, 0);
INSERT INTO `ylrc_goods` VALUES (38, '2021-12-09 21:44:08', '2021-12-09 21:44:30', 128, 'C++ Primer中文版 (第5版)是久负盛名的 C 经典教程，时隔八年之久，终于迎来重大升级。除令全球无数程序员从中受益，甚至为之迷醉的——C 大师 Stanley B. Lippman 的丰富实践经验，C 标准委员会原负责人 Josée Lajoie 对C 标准的深入理解，以及C 先驱 Barbara E. Moo 在 C 教学方面的真知灼见外，更是基于全新的 C 11标准进行了全面而彻底的内容更新。非常难能可贵的是，《C Primer 中文版(第5版)》所有示例均全部采用 C 11 标准改写，这在经典升级版中极其罕见——充分体现了 C 语言的重大进展及其全面实践。', 0, 'C++ Primer中文版  第5版', '20211209/1639057408777.jpg', 0, 64, 1, 51, 5, 2);

-- ----------------------------
-- Table structure for ylrc_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_goods_category`;
CREATE TABLE `ylrc_goods_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKos35mkmw4k5dvi4fi2govg2pa`(`parent_id`) USING BTREE,
  CONSTRAINT `FKos35mkmw4k5dvi4fi2govg2pa` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_goods_category
-- ----------------------------
INSERT INTO `ylrc_goods_category` VALUES (1, '2020-04-02 20:20:05', '2021-12-08 12:04:02', '20200402/1585834512163.png', '移动开发', 0, NULL);
INSERT INTO `ylrc_goods_category` VALUES (4, '2020-04-02 20:26:45', '2021-12-08 12:07:15', '20200402/1585834542235.png', 'Android', 1, 1);
INSERT INTO `ylrc_goods_category` VALUES (5, '2020-04-02 21:13:04', '2021-12-08 12:07:29', '20200402/1585834572308.png', 'Swift', 2, 1);
INSERT INTO `ylrc_goods_category` VALUES (6, '2020-04-02 21:37:05', '2021-12-08 12:18:20', '20200402/1585834607924.png', 'iOS', 3, 1);
INSERT INTO `ylrc_goods_category` VALUES (7, '2020-04-02 21:37:23', '2021-12-08 12:18:58', '20200402/1585834633735.png', '移动交互设计', 4, 1);
INSERT INTO `ylrc_goods_category` VALUES (8, '2020-04-02 21:37:50', '2021-12-08 12:40:21', '20200402/1585834662625.png', '计算基础', 5, NULL);
INSERT INTO `ylrc_goods_category` VALUES (9, '2020-04-02 21:38:08', '2021-12-08 12:42:24', '20200402/1585834679788.png', '数据结构', 6, 8);
INSERT INTO `ylrc_goods_category` VALUES (10, '2020-04-02 21:38:26', '2021-12-08 12:42:35', '20200402/1585834694895.png', '计算机网络', 7, 8);
INSERT INTO `ylrc_goods_category` VALUES (11, '2020-04-02 21:38:45', '2021-12-08 12:42:57', '20200402/1585834717184.png', '计算机原理', 8, 8);
INSERT INTO `ylrc_goods_category` VALUES (21, '2020-04-05 19:10:14', '2021-12-08 12:51:39', '20200405/1586085005899.png', '图像处理', 15, NULL);
INSERT INTO `ylrc_goods_category` VALUES (22, '2020-04-05 19:10:45', '2021-12-08 12:51:49', '20200405/1586085024716.png', 'OpenCV', 16, 21);
INSERT INTO `ylrc_goods_category` VALUES (23, '2020-04-05 19:11:08', '2021-12-08 12:57:21', '20200405/1586085052292.png', 'MATLAB', 17, 21);
INSERT INTO `ylrc_goods_category` VALUES (37, '2020-04-05 19:16:38', '2021-12-08 13:00:36', '20200405/1586085388834.png', '游戏开发', 31, NULL);
INSERT INTO `ylrc_goods_category` VALUES (38, '2020-04-05 19:17:05', '2021-12-08 13:01:12', '20200405/1586085407122.png', 'Unity', 32, 37);
INSERT INTO `ylrc_goods_category` VALUES (39, '2020-04-05 19:17:22', '2021-12-08 13:01:26', '20200405/1586085433434.png', 'cocos2d', 33, 37);
INSERT INTO `ylrc_goods_category` VALUES (40, '2020-04-05 19:17:39', '2021-12-08 13:01:38', '20200405/1586085449303.png', '关卡设计', 34, 37);
INSERT INTO `ylrc_goods_category` VALUES (41, '2020-04-05 19:18:00', '2021-12-08 13:01:51', '20200405/1586085471766.png', '游戏设计', 35, 37);
INSERT INTO `ylrc_goods_category` VALUES (42, '2020-04-05 19:18:31', '2021-12-09 20:59:20', '20200405/1586085499095.png', '职业技能', 36, NULL);
INSERT INTO `ylrc_goods_category` VALUES (43, '2020-04-05 19:18:49', '2021-12-09 20:59:36', '20200405/1586085520436.png', '面试宝典', 37, 42);
INSERT INTO `ylrc_goods_category` VALUES (44, '2020-04-05 19:19:05', '2021-12-09 20:59:56', '20200405/1586085534371.png', '职业规划', 38, 42);
INSERT INTO `ylrc_goods_category` VALUES (50, '2020-04-05 19:21:29', '2021-12-08 13:10:36', '20211208/1638940234673.png', '计算语言', 44, NULL);
INSERT INTO `ylrc_goods_category` VALUES (51, '2020-04-05 19:21:47', '2021-12-08 13:10:47', '20211208/1638940245652.png', 'C/C++', 45, 50);
INSERT INTO `ylrc_goods_category` VALUES (52, '2020-04-05 19:22:05', '2021-12-08 13:10:56', '20211208/1638940255204.png', 'java', 46, 50);
INSERT INTO `ylrc_goods_category` VALUES (53, '2020-04-05 19:22:29', '2021-12-08 13:11:54', '20200405/1586085739125.png', '其他', 48, NULL);
INSERT INTO `ylrc_goods_category` VALUES (55, '2020-04-12 22:31:58', '2021-12-08 13:12:03', '20200412/1586701902327.png', '其他小类', 49, 53);
INSERT INTO `ylrc_goods_category` VALUES (56, '2021-12-08 12:44:49', '2021-12-08 12:44:49', '20211208/1638938678433.png', '操作系统', 9, 8);
INSERT INTO `ylrc_goods_category` VALUES (57, '2021-12-08 13:11:41', '2021-12-08 13:11:41', '20211208/1638940289912.png', 'Python', 47, 50);

-- ----------------------------
-- Table structure for ylrc_menu
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_menu`;
CREATE TABLE `ylrc_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  `is_bitton` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKsbtnjocfrq29e8taxdwo21gic`(`parent_id`) USING BTREE,
  CONSTRAINT `FKsbtnjocfrq29e8taxdwo21gic` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_menu
-- ----------------------------
INSERT INTO `ylrc_menu` VALUES (2, '2020-03-14 14:26:03', '2020-03-14 18:24:53', '系统设置', '', 'mdi-settings', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (3, '2020-03-14 16:58:55', '2020-03-14 18:26:02', '菜单管理', '/admin/menu/list', 'mdi-view-list', 1, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (5, '2020-03-14 17:04:44', '2020-03-14 18:27:53', '新增', '/admin/menu/add', 'mdi-plus', 2, 3, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (7, '2020-03-14 17:07:43', '2020-03-15 12:11:25', '角色管理', '/admin/role/list', 'mdi-account-settings-variant', 5, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (8, '2020-03-14 18:28:48', '2020-03-21 22:04:45', '编辑', 'edit(\'/admin/menu/edit\')', 'mdi-grease-pencil', 3, 3, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (9, '2020-03-14 18:30:00', '2020-03-21 22:08:20', '删除', 'del(\'/admin/menu/delete\')', 'mdi-close', 4, 3, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (10, '2020-03-15 12:12:00', '2020-03-15 12:12:00', '添加', '/admin/role/add', 'mdi-account-plus', 6, 7, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (11, '2020-03-15 12:12:36', '2020-03-21 22:10:45', '编辑', 'edit(\'/admin/role/edit\')', 'mdi-account-edit', 7, 7, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (12, '2020-03-15 12:13:19', '2020-03-21 22:15:27', '删除', 'del(\'/admin/role/delete\')', 'mdi-account-remove', 8, 7, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (13, '2020-03-15 12:14:52', '2020-03-15 12:17:00', '用户管理', '/admin/user/list', 'mdi-account-multiple', 9, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (14, '2020-03-15 12:15:22', '2020-03-15 12:17:27', '添加', '/admin/user/add', 'mdi-account-plus', 10, 13, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (15, '2020-03-16 17:18:14', '2020-03-21 22:11:19', '编辑', 'edit(\'/admin/user/edit\')', 'mdi-account-edit', 11, 13, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (16, '2020-03-16 17:19:01', '2020-03-21 22:15:36', '删除', 'del(\'/admin/user/delete\')', 'mdi-account-remove', 12, 13, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (19, '2020-03-22 11:24:36', '2020-03-22 11:26:00', '上传图片', '/admin/upload/upload_photo', 'mdi-arrow-up-bold-circle', 0, 13, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (20, '2020-03-22 14:09:35', '2020-03-22 14:09:47', '日志管理', '/system/operator_log_list', 'mdi-tag-multiple', 13, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (21, '2020-03-22 14:11:39', '2020-03-22 14:11:39', '删除', 'del(\'/system/delete_operator_log\')', 'mdi-tag-remove', 14, 20, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (22, '2020-03-22 14:12:57', '2020-03-22 14:46:55', '清空日志', 'delAll(\'/system/delete_all_operator_log\')', 'mdi-delete-circle', 15, 20, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (23, '2020-03-22 14:46:40', '2020-03-22 14:47:09', '数据备份', '/admin/database_bak/list', 'mdi-database', 16, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (24, '2020-03-22 14:48:07', '2020-03-22 15:13:41', '备份', 'add(\'/admin/database_bak/add\')', 'mdi-database-plus', 17, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (25, '2020-03-22 14:49:03', '2020-03-22 14:49:03', '删除', 'del(\'/admin/database_bak/delete\')', 'mdi-database-minus', 18, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (26, '2020-03-22 19:36:20', '2020-03-22 19:36:20', '还原', 'restore(\'/admin/database_bak/restore\')', 'mdi-database-minus', 19, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (27, '2020-04-01 20:35:09', '2020-04-01 20:35:09', '物品管理', '/admin/goods_category/list', 'mdi-dialpad', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (28, '2020-04-01 20:35:46', '2020-04-12 22:28:09', '分类管理', '/admin/goods_category/list', 'mdi-apps', 0, 27, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (29, '2020-04-01 20:36:27', '2020-04-12 22:30:39', '物品管理', '/admin/goods/list', 'mdi-cart', 0, 27, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (30, '2020-04-01 20:40:48', '2020-04-12 22:28:34', '添加', '/admin/goods_category/add', 'mdi-battery-positive', 0, 28, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (31, '2020-04-01 20:41:33', '2020-04-12 22:30:02', '编辑', 'edit(\'/admin/goods_category/edit\')', 'mdi-border-color', 0, 28, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (32, '2020-04-01 20:42:15', '2020-04-12 22:30:21', '删除', 'del(\'/admin/goods_category/delete\')', 'mdi-close', 0, 28, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (33, '2020-04-13 18:52:12', '2020-04-13 18:52:12', '上架', 'up(\'/admin/goods/up_down\')', 'mdi-arrow-up-bold-box', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (34, '2020-04-13 18:52:55', '2020-04-13 18:52:55', '下架', 'down(\'/admin/goods/up_down\')', 'mdi-arrow-down-bold-box', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (35, '2020-04-13 18:54:10', '2020-04-15 19:17:48', '删除', 'del(\'/admin/goods/delete\')', 'mdi-close-box', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (36, '2020-04-15 19:06:49', '2020-04-15 19:06:49', '推荐', 'recommend(\'/admin/goods/recommend\')', 'mdi-thumb-up', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (37, '2020-04-15 19:07:45', '2020-04-15 19:07:45', '取消推荐', 'unrecommend(\'/admin/goods/recommend\')', 'mdi-thumb-down', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (38, '2020-04-15 19:32:16', '2020-04-15 19:32:16', '求购物品', '/admin/wanted_goods/list', 'mdi-ticket', 0, 27, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (39, '2020-04-15 19:32:55', '2020-04-15 19:59:53', '删除', 'del(\'/admin/wanted_goods/delete\')', 'mdi-close-box', 0, 38, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (40, '2020-04-15 20:02:04', '2020-04-15 20:02:04', '学生管理', '/admin/student/list', 'mdi-account-multiple', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (41, '2020-04-15 20:02:38', '2020-04-15 20:02:38', '学生列表', '/admin/student/list', 'mdi-account-multiple', 0, 40, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (42, '2020-04-15 20:06:28', '2020-04-15 20:06:28', '冻结', 'freeze(\'/admin/student/update_status\')', 'mdi-account-settings-variant', 0, 41, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (43, '2020-04-15 20:06:59', '2020-04-15 21:45:31', '激活', 'openStudent(\'/admin/student/update_status\')', 'mdi-account-key', 0, 41, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (44, '2020-04-15 20:07:33', '2020-04-15 20:07:33', '删除', 'del(\'/admin/student/delete\')', 'mdi-account-remove', 0, 41, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (45, '2020-04-15 21:52:57', '2020-04-15 21:52:57', '评论管理', '/admin/comment/list', 'mdi-comment-account', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (46, '2020-04-15 21:53:39', '2020-04-15 21:53:39', '评论列表', '/admin/comment/list', 'mdi-comment-multiple-outline', 0, 45, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (47, '2020-04-15 21:54:35', '2020-04-15 21:54:35', '删除', 'del(\'/admin/comment/delete\')', 'mdi-message-bulleted-off', 0, 46, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (48, '2020-04-16 19:28:48', '2020-04-16 19:28:48', '举报管理', '/admin/report/list', 'mdi-alert', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (49, '2020-04-16 19:30:31', '2020-04-16 19:30:31', '举报列表', '/admin/report/list', 'mdi-view-headline', 0, 48, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (50, '2020-04-16 19:31:09', '2020-04-16 19:31:09', '删除', 'del(\'/admin/report/delete\')', 'mdi-close-box', 0, 49, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (51, '2020-04-16 19:46:08', '2020-04-16 19:46:08', '新闻公告', '/admin/news/list', 'mdi-onenote', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (52, '2020-04-16 19:46:39', '2020-04-16 19:46:39', '公告列表', '/admin/news/list', 'mdi-book-open', 0, 51, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (53, '2020-04-16 19:48:01', '2020-04-16 19:48:01', '添加', '/admin/news/add', 'mdi-plus', 0, 52, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (54, '2020-04-16 19:48:46', '2020-04-16 19:48:46', '编辑', 'edit(\'/admin/news/edit\')', 'mdi-border-color', 0, 52, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (55, '2020-04-16 19:49:37', '2020-04-16 19:49:37', '删除', 'del(\'/admin/news/delete\')', 'mdi-close', 0, 52, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (56, '2020-04-18 14:25:58', '2020-04-18 14:25:58', '网站设置', '', 'mdi-settings', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (57, '2020-04-18 14:27:31', '2020-04-18 14:27:31', '友情链接', '/admin/friend_link/list', 'mdi-vector-line', 0, 56, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (58, '2020-04-18 14:28:36', '2020-04-18 14:28:36', '添加', '/admin/friend_link/add', 'mdi-plus', 0, 57, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (59, '2020-04-18 14:29:17', '2020-04-18 15:38:53', '编辑', 'edit(\'/admin/friend_link/edit\')', 'mdi-border-color', 0, 57, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (60, '2020-04-18 14:29:45', '2020-04-18 14:29:45', '删除', 'del(\'/admin/friend_link/delete\')', 'mdi-close-box', 0, 57, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (61, '2020-04-18 16:26:45', '2020-04-18 16:26:45', '站点设置', '/admin/site_setting/setting', 'mdi-wrench', 0, 56, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (62, '2020-04-18 16:28:25', '2020-04-18 16:28:25', '提交修改', '/admin/site_setting/save_setting', 'mdi-marker-check', 0, 61, b'1', b'0');

-- ----------------------------
-- Table structure for ylrc_news
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_news`;
CREATE TABLE `ylrc_news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(10024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `title` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `view_number` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_news
-- ----------------------------
INSERT INTO `ylrc_news` VALUES (2, '2020-04-16 21:29:49', '2021-12-08 01:03:49', '1.禁止和限制发布物品管理规则\r\n2.重复铺货商品管理规则\r\n3.支付方式不符商品管理规则\r\n4.商品价格、邮费不符商品管理规则\r\n5.信用炒作商品管理规则', 0, '校园图书互借馆发布图书规则', 0);
INSERT INTO `ylrc_news` VALUES (3, '2020-04-16 21:30:22', '2021-12-08 11:52:20', '注册时请填写详细的注册信息，学号为必填项。', 1, '校园图书互借馆注册规则', 0);

-- ----------------------------
-- Table structure for ylrc_operater_log
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_operater_log`;
CREATE TABLE `ylrc_operater_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operator` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 410 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_operater_log
-- ----------------------------
INSERT INTO `ylrc_operater_log` VALUES (172, '2020-03-22 14:49:22', '2020-03-22 14:49:22', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (173, '2020-03-22 14:58:14', '2020-03-22 14:58:14', '用户【猿来入此】于【2020-03-22 14:58:13】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (174, '2020-03-22 15:09:49', '2020-03-22 15:09:49', '用户【猿来入此】于【2020-03-22 15:09:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (175, '2020-03-22 15:11:09', '2020-03-22 15:11:09', '用户【猿来入此】于【2020-03-22 15:11:08】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (176, '2020-03-22 15:13:41', '2020-03-22 15:13:41', '编辑菜单信息【Menu [name=备份, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=add(\'/database_bak/add\'), icon=mdi-database-plus, sort=17, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (177, '2020-03-22 16:16:31', '2020-03-22 16:16:31', '用户【猿来入此】于【2020-03-22 16:16:31】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (178, '2020-03-22 16:31:23', '2020-03-22 16:31:23', '用户【猿来入此】于【2020-03-22 16:31:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (179, '2020-03-22 16:56:25', '2020-03-22 16:56:25', '用户【猿来入此】于【2020-03-22 16:56:25】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (180, '2020-03-22 17:00:42', '2020-03-22 17:00:42', '用户【猿来入此】于【2020-03-22 17:00:42】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (181, '2020-03-22 17:13:01', '2020-03-22 17:13:01', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (182, '2020-03-22 17:15:04', '2020-03-22 17:15:04', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322171504.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (183, '2020-03-22 17:15:14', '2020-03-22 17:15:14', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322171514.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (184, '2020-03-22 17:21:02', '2020-03-22 17:21:02', '用户【猿来入此】于【2020-03-22 17:21:02】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (185, '2020-03-22 17:21:15', '2020-03-22 17:21:15', '添加角色【dsadsasadsa】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (186, '2020-03-22 18:09:55', '2020-03-22 18:09:55', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322180955.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (187, '2020-03-22 18:59:16', '2020-03-22 18:59:16', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322185916.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (188, '2020-03-22 18:59:41', '2020-03-22 18:59:41', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322180955.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (189, '2020-03-22 19:12:03', '2020-03-22 19:12:03', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322191203.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (190, '2020-03-22 19:12:59', '2020-03-22 19:12:59', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322191203.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (191, '2020-03-22 19:35:07', '2020-03-22 19:35:07', '用户【猿来入此】于【2020-03-22 19:35:07】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (192, '2020-03-22 19:35:21', '2020-03-22 19:35:21', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193521.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (193, '2020-03-22 19:36:20', '2020-03-22 19:36:20', '添加菜单信息【Menu [name=还原, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=restore(\'/database_bak/restore\'), icon=mdi-database-minus, sort=19, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (194, '2020-03-22 19:36:34', '2020-03-22 19:36:34', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (195, '2020-03-22 19:36:47', '2020-03-22 19:36:47', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193647.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (196, '2020-03-22 19:37:21', '2020-03-22 19:37:21', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322193647.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (197, '2020-03-22 19:37:54', '2020-03-22 19:37:54', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193754.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (198, '2020-03-22 19:38:15', '2020-03-22 19:38:15', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322193754.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (199, '2020-03-22 19:43:34', '2020-03-22 19:43:34', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194334.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (200, '2020-03-22 19:43:39', '2020-03-22 19:43:39', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194339.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (201, '2020-03-22 19:43:44', '2020-03-22 19:43:44', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194344.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (202, '2020-03-22 19:43:49', '2020-03-22 19:43:49', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194349.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (203, '2020-03-22 19:43:52', '2020-03-22 19:43:52', '用户【猿来入此】于【2020-03-22 19:43:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (204, '2020-03-22 19:43:54', '2020-03-22 19:43:54', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194354.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (205, '2020-03-22 19:43:59', '2020-03-22 19:43:59', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194359.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (206, '2020-03-22 19:44:04', '2020-03-22 19:44:04', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194404.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (207, '2020-03-22 19:44:09', '2020-03-22 19:44:09', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194409.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (208, '2020-03-22 19:44:14', '2020-03-22 19:44:14', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194414.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (209, '2020-03-22 19:44:19', '2020-03-22 19:44:19', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194419.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (210, '2020-03-22 19:44:24', '2020-03-22 19:44:24', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194424.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (211, '2020-03-22 19:44:29', '2020-03-22 19:44:29', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194429.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (212, '2020-03-22 19:44:34', '2020-03-22 19:44:34', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194434.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (213, '2020-03-22 19:44:39', '2020-03-22 19:44:39', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194439.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (214, '2020-03-22 21:11:19', '2020-03-22 21:11:19', '用户【猿来入此】于【2020-03-22 21:11:19】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (215, '2020-03-22 21:18:12', '2020-03-22 21:18:12', '用户【猿来入此】于【2020-03-22 21:18:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (216, '2020-03-22 21:36:47', '2020-03-22 21:36:47', '用户【猿来入此】于【2020-03-22 21:36:47】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (217, '2020-03-22 21:43:51', '2020-03-22 21:43:51', '用户【猿来入此】于【2020-03-22 21:43:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (218, '2020-03-23 17:41:23', '2020-03-23 17:41:23', '用户【猿来入此】于【2020-03-23 17:41:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (219, '2020-03-23 17:41:49', '2020-03-23 17:41:49', '添加菜单信息【Menu [name=sdadsa递四方速递, parent=null, url=https://www.yuanlrc.com/, icon=mdi-alarm-snooze, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (220, '2020-03-23 17:42:02', '2020-03-23 17:42:02', '编辑菜单信息【Menu [name=sdadsa递四方速递, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=https://www.yuanlrc.com/, icon=mdi-alarm-snooze, sort=3, isButton=false, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (221, '2020-03-23 17:42:09', '2020-03-23 17:42:09', '删除菜单信息，菜单ID【27】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (222, '2020-03-23 17:42:32', '2020-03-23 17:42:32', '编辑角色【sdfds水电费多少】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (223, '2020-03-23 17:42:45', '2020-03-23 17:42:45', '编辑角色【sdfds水电费多少】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (224, '2020-03-23 17:42:56', '2020-03-23 17:42:56', '删除角色ID【7】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (225, '2020-03-23 17:43:16', '2020-03-23 17:43:16', '添加角色【撒旦撒】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (226, '2020-03-23 17:43:29', '2020-03-23 17:43:29', '删除角色ID【8】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (227, '2020-03-23 17:44:11', '2020-03-23 17:44:11', '添加用户，用户名：打撒大撒', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (228, '2020-03-23 17:44:29', '2020-03-23 17:44:29', '编辑用户，用户名：打撒大撒22', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (229, '2020-03-23 17:44:37', '2020-03-23 17:44:37', '添加用户，用户ID：6', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (230, '2020-03-23 17:44:55', '2020-03-23 17:44:55', '添加用户，用户ID：4', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (231, '2020-03-23 17:45:47', '2020-03-23 17:45:47', '编辑用户，用户名：小刘同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (232, '2020-03-23 17:46:49', '2020-03-23 17:46:49', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200323174649.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (233, '2020-03-23 17:47:16', '2020-03-23 17:47:16', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200323174649.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (234, '2020-03-23 17:48:15', '2020-03-23 17:48:15', '用户【测试账号】于【2020-03-23 17:48:15】登录系统！', '测试账号');
INSERT INTO `ylrc_operater_log` VALUES (235, '2020-03-23 17:49:00', '2020-03-23 17:49:00', '编辑角色【测试角色】', '测试账号');
INSERT INTO `ylrc_operater_log` VALUES (236, '2020-03-23 17:49:50', '2020-03-23 17:49:50', '用户【猿来入此】于【2020-03-23 17:49:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (237, '2020-03-23 17:50:03', '2020-03-23 17:50:03', '编辑用户，用户名：小刘同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (238, '2020-03-23 17:50:19', '2020-03-23 17:50:19', '编辑用户，用户名：小刘同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (239, '2020-03-23 17:50:56', '2020-03-23 17:50:56', '用户【猿来入此】于【2020-03-23 17:50:56】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (240, '2020-03-30 22:56:58', '2020-03-30 22:56:58', '用户【猿来入此】于【2020-03-30 22:56:57】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (241, '2020-03-30 22:59:02', '2020-03-30 22:59:02', '添加用户，用户名：张三同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (242, '2020-04-01 20:31:23', '2020-04-01 20:31:23', '用户【猿来入此】于【2020-04-01 20:31:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (243, '2020-04-01 20:35:09', '2020-04-01 20:35:09', '添加菜单信息【Menu [name=物品管理, parent=null, url=/admin/goods_category/list, icon=mdi-dialpad, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (244, '2020-04-01 20:35:46', '2020-04-01 20:35:46', '添加菜单信息【Menu [name=分类管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/goods_category/list, icon=mdi-apps, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (245, '2020-04-01 20:36:27', '2020-04-01 20:36:27', '添加菜单信息【Menu [name=物品管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/goods/list, icon=mdi-cart, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (246, '2020-04-01 20:40:48', '2020-04-01 20:40:48', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/goods_category/add, icon=mdi-battery-positive, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (247, '2020-04-01 20:41:33', '2020-04-01 20:41:33', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/goods_category/add\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (248, '2020-04-01 20:42:15', '2020-04-01 20:42:15', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=delete(\'/admin/goods_category/delete\'), icon=mdi-close, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (249, '2020-04-01 20:42:37', '2020-04-01 20:42:37', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (250, '2020-04-01 20:42:49', '2020-04-01 20:42:49', '用户【猿来入此】于【2020-04-01 20:42:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (251, '2020-04-01 20:57:35', '2020-04-01 20:57:35', '用户【猿来入此】于【2020-04-01 20:57:35】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (252, '2020-04-01 21:05:03', '2020-04-01 21:05:03', '用户【猿来入此】于【2020-04-01 21:05:03】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (253, '2020-04-02 20:16:33', '2020-04-02 20:16:33', '用户【猿来入此】于【2020-04-02 20:16:33】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (254, '2020-04-02 20:19:50', '2020-04-02 20:19:50', '用户【猿来入此】于【2020-04-02 20:19:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (255, '2020-04-02 20:22:22', '2020-04-02 20:22:22', '用户【猿来入此】于【2020-04-02 20:22:22】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (256, '2020-04-02 21:11:49', '2020-04-02 21:11:49', '用户【猿来入此】于【2020-04-02 21:11:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (257, '2020-04-02 21:25:55', '2020-04-02 21:25:55', '用户【猿来入此】于【2020-04-02 21:25:55】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (258, '2020-04-02 21:26:29', '2020-04-02 21:26:29', '编辑菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/goods_category/edit\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (259, '2020-04-02 21:26:40', '2020-04-02 21:26:40', '用户【猿来入此】于【2020-04-02 21:26:40】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (260, '2020-04-02 21:29:41', '2020-04-02 21:29:41', '用户【猿来入此】于【2020-04-02 21:29:41】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (261, '2020-04-05 18:44:22', '2020-04-05 18:44:22', '用户【猿来入此】于【2020-04-05 18:44:22】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (262, '2020-04-05 19:55:54', '2020-04-05 19:55:54', '用户【猿来入此】于【2020-04-05 19:55:54】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (263, '2020-04-11 21:18:28', '2020-04-11 21:18:28', '用户【猿来入此】于【2020-04-11 21:18:28】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (264, '2020-04-12 22:14:46', '2020-04-12 22:14:46', '用户【猿来入此】于【2020-04-12 22:14:46】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (265, '2020-04-12 22:28:09', '2020-04-12 22:28:09', '编辑菜单信息【Menu [name=分类管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin_goods_category/list, icon=mdi-apps, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (266, '2020-04-12 22:28:34', '2020-04-12 22:28:34', '编辑菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin_goods_category/add, icon=mdi-battery-positive, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (267, '2020-04-12 22:30:02', '2020-04-12 22:30:02', '编辑菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin_goods_category/edit\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (268, '2020-04-12 22:30:21', '2020-04-12 22:30:21', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin_goods_category/delete\'), icon=mdi-close, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (269, '2020-04-12 22:30:39', '2020-04-12 22:30:39', '编辑菜单信息【Menu [name=物品管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin_goods/list, icon=mdi-cart, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (270, '2020-04-12 22:31:08', '2020-04-12 22:31:08', '用户【猿来入此】于【2020-04-12 22:31:08】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (271, '2020-04-13 18:36:22', '2020-04-13 18:36:22', '用户【猿来入此】于【2020-04-13 18:36:22】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (272, '2020-04-13 18:44:49', '2020-04-13 18:44:49', '用户【猿来入此】于【2020-04-13 18:44:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (273, '2020-04-13 18:52:12', '2020-04-13 18:52:12', '添加菜单信息【Menu [name=上架, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=up(\'/admin/goods/up_down\'), icon=mdi-arrow-up-bold-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (274, '2020-04-13 18:52:55', '2020-04-13 18:52:55', '添加菜单信息【Menu [name=下架, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=down(\'/admin/goods/up_down\'), icon=mdi-arrow-down-bold-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (275, '2020-04-13 18:54:10', '2020-04-13 18:54:10', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=delete(\'/admin/goods/delete\'), icon=mdi-close-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (276, '2020-04-13 18:54:27', '2020-04-13 18:54:27', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (277, '2020-04-13 18:54:40', '2020-04-13 18:54:40', '用户【猿来入此】于【2020-04-13 18:54:40】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (278, '2020-04-13 19:02:09', '2020-04-13 19:02:09', '用户【猿来入此】于【2020-04-13 19:02:08】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (279, '2020-04-13 19:34:51', '2020-04-13 19:34:51', '用户【猿来入此】于【2020-04-13 19:34:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (280, '2020-04-13 20:00:28', '2020-04-13 20:00:28', '用户【猿来入此】于【2020-04-13 20:00:28】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (281, '2020-04-13 21:02:50', '2020-04-13 21:02:50', '用户【猿来入此】于【2020-04-13 21:02:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (282, '2020-04-13 21:48:47', '2020-04-13 21:48:47', '用户【猿来入此】于【2020-04-13 21:48:47】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (283, '2020-04-13 21:54:05', '2020-04-13 21:54:05', '用户【猿来入此】于【2020-04-13 21:54:05】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (284, '2020-04-13 21:55:37', '2020-04-13 21:55:37', '用户【猿来入此】于【2020-04-13 21:55:37】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (285, '2020-04-15 19:04:02', '2020-04-15 19:04:02', '用户【猿来入此】于【2020-04-15 19:04:02】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (286, '2020-04-15 19:06:49', '2020-04-15 19:06:49', '添加菜单信息【Menu [name=推荐, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=recommend(\'/admin/goods/recommend\'), icon=mdi-thumb-up, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (287, '2020-04-15 19:07:45', '2020-04-15 19:07:45', '添加菜单信息【Menu [name=取消推荐, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=unrecommend(\'/admin/goods/recommend\'), icon=mdi-thumb-down, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (288, '2020-04-15 19:08:02', '2020-04-15 19:08:02', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (289, '2020-04-15 19:11:58', '2020-04-15 19:11:58', '用户【猿来入此】于【2020-04-15 19:11:58】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (290, '2020-04-15 19:17:48', '2020-04-15 19:17:48', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/goods/delete\'), icon=mdi-close-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (291, '2020-04-15 19:18:01', '2020-04-15 19:18:01', '用户【猿来入此】于【2020-04-15 19:18:01】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (292, '2020-04-15 19:32:16', '2020-04-15 19:32:16', '添加菜单信息【Menu [name=求购物品, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/wanted_goods/list, icon=mdi-ticket, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (293, '2020-04-15 19:32:55', '2020-04-15 19:32:55', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=delete(\'/admin/wanted_goods/delete\'), icon=mdi-close-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (294, '2020-04-15 19:33:03', '2020-04-15 19:33:03', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (295, '2020-04-15 19:54:57', '2020-04-15 19:54:57', '用户【猿来入此】于【2020-04-15 19:54:57】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (296, '2020-04-15 19:59:53', '2020-04-15 19:59:53', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/wanted_goods/delete\'), icon=mdi-close-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (297, '2020-04-15 20:00:14', '2020-04-15 20:00:14', '用户【猿来入此】于【2020-04-15 20:00:14】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (298, '2020-04-15 20:02:04', '2020-04-15 20:02:04', '添加菜单信息【Menu [name=学生管理, parent=null, url=/admin/student/list, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (299, '2020-04-15 20:02:38', '2020-04-15 20:02:38', '添加菜单信息【Menu [name=学生列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/student/list, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (300, '2020-04-15 20:06:28', '2020-04-15 20:06:28', '添加菜单信息【Menu [name=冻结, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=freeze(\'/admin/student/update_status\'), icon=mdi-account-settings-variant, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (301, '2020-04-15 20:06:59', '2020-04-15 20:06:59', '添加菜单信息【Menu [name=激活, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=open(\'/admin/student/update_status\'), icon=mdi-account-key, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (302, '2020-04-15 20:07:33', '2020-04-15 20:07:33', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/student/delete\'), icon=mdi-account-remove, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (303, '2020-04-15 20:07:43', '2020-04-15 20:07:43', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (304, '2020-04-15 21:36:09', '2020-04-15 21:36:09', '用户【猿来入此】于【2020-04-15 21:36:09】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (305, '2020-04-15 21:45:31', '2020-04-15 21:45:31', '编辑菜单信息【Menu [name=激活, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=openStudent(\'/admin/student/update_status\'), icon=mdi-account-key, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (306, '2020-04-15 21:45:51', '2020-04-15 21:45:51', '用户【猿来入此】于【2020-04-15 21:45:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (307, '2020-04-15 21:52:57', '2020-04-15 21:52:57', '添加菜单信息【Menu [name=评论管理, parent=null, url=/admin/comment/list, icon=mdi-comment-account, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (308, '2020-04-15 21:53:39', '2020-04-15 21:53:39', '添加菜单信息【Menu [name=评论列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/comment/list, icon=mdi-comment-multiple-outline, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (309, '2020-04-15 21:54:35', '2020-04-15 21:54:35', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/comment/delete\'), icon=mdi-message-bulleted-off, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (310, '2020-04-15 21:54:45', '2020-04-15 21:54:45', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (311, '2020-04-15 22:22:56', '2020-04-15 22:22:56', '用户【猿来入此】于【2020-04-15 22:22:56】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (312, '2020-04-16 19:28:04', '2020-04-16 19:28:04', '用户【猿来入此】于【2020-04-16 19:28:03】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (313, '2020-04-16 19:28:48', '2020-04-16 19:28:48', '添加菜单信息【Menu [name=举报管理, parent=null, url=/admin/report/list, icon=mdi-alert, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (314, '2020-04-16 19:30:31', '2020-04-16 19:30:31', '添加菜单信息【Menu [name=举报列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/report/list, icon=mdi-view-headline, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (315, '2020-04-16 19:31:09', '2020-04-16 19:31:09', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/report/delete\'), icon=mdi-close-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (316, '2020-04-16 19:31:17', '2020-04-16 19:31:17', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (317, '2020-04-16 19:33:58', '2020-04-16 19:33:58', '用户【猿来入此】于【2020-04-16 19:33:58】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (318, '2020-04-16 19:46:08', '2020-04-16 19:46:08', '添加菜单信息【Menu [name=新闻公告, parent=null, url=/admin/news/list, icon=mdi-onenote, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (319, '2020-04-16 19:46:39', '2020-04-16 19:46:39', '添加菜单信息【Menu [name=公告列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/news/list, icon=mdi-book-open, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (320, '2020-04-16 19:48:01', '2020-04-16 19:48:01', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/news/add, icon=mdi-plus, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (321, '2020-04-16 19:48:46', '2020-04-16 19:48:46', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/news/edit\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (322, '2020-04-16 19:49:37', '2020-04-16 19:49:37', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/news/delete\'), icon=mdi-close, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (323, '2020-04-16 19:49:47', '2020-04-16 19:49:47', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (324, '2020-04-16 20:36:53', '2020-04-16 20:36:53', '用户【猿来入此】于【2020-04-16 20:36:53】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (325, '2020-04-16 21:22:24', '2020-04-16 21:22:24', '用户【猿来入此】于【2020-04-16 21:22:24】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (326, '2020-04-16 21:29:17', '2020-04-16 21:29:17', '添加新闻公告:News [title=fsdfsd, content=dsfds, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (327, '2020-04-16 21:29:49', '2020-04-16 21:29:49', '添加新闻公告:News [title=商品发布规则, content=这里是具体的商品发布规则。, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (328, '2020-04-16 21:30:22', '2020-04-16 21:30:22', '添加新闻公告:News [title=撒旦撒萨达萨达, content=萨达撒的撒旦撒, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (329, '2020-04-16 21:30:29', '2020-04-16 21:30:29', '添加新闻公告:News [title=萨芬广东省水电费, content=但是放水电费萨达但是发送到, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (330, '2020-04-16 21:30:35', '2020-04-16 21:30:35', '添加新闻公告:News [title=房顶上地方水电费, content=房顶上房顶上水电费但是, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (331, '2020-04-16 21:32:31', '2020-04-16 21:32:31', '编辑新闻公告：News [title=测试新闻, content=这里是测试的新闻dsfds, viewNumber=0, sort=1]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (332, '2020-04-16 21:32:57', '2020-04-16 21:32:57', '编辑新闻公告：News [title=房顶上地方水电费, content=房顶上房顶上水电费但是, viewNumber=0, sort=2]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (333, '2020-04-16 21:33:04', '2020-04-16 21:33:04', '编辑新闻公告：News [title=萨芬广东省水电费, content=但是放水电费萨达但是发送到, viewNumber=0, sort=4]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (334, '2020-04-16 21:36:12', '2020-04-16 21:36:12', '删除新闻公告，新闻公告ID：4', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (335, '2020-04-16 21:36:18', '2020-04-16 21:36:18', '删除新闻公告，新闻公告ID：5', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (336, '2020-04-16 21:36:57', '2020-04-16 21:36:57', '编辑新闻公告：News [title=商品发布规则, content=1.禁止和限制发布物品管理规则\r\n2.重复铺货商品管理规则\r\n3.支付方式不符商品管理规则\r\n4.商品价格、邮费不符商品管理规则\r\n5.信用炒作商品管理规则, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (337, '2020-04-16 21:44:28', '2020-04-16 21:44:28', '用户【猿来入此】于【2020-04-16 21:44:28】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (338, '2020-04-16 21:45:49', '2020-04-16 21:45:49', '编辑新闻公告：News [title=关于在猿来入此校园二手市场发布商品的规则, content=1.禁止和限制发布物品管理规则\r\n2.重复铺货商品管理规则\r\n3.支付方式不符商品管理规则\r\n4.商品价格、邮费不符商品管理规则\r\n5.信用炒作商品管理规则, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (339, '2020-04-16 21:46:08', '2020-04-16 21:46:08', '编辑新闻公告：News [title=猿来入此校园二手市场发布商品规则, content=1.禁止和限制发布物品管理规则\r\n2.重复铺货商品管理规则\r\n3.支付方式不符商品管理规则\r\n4.商品价格、邮费不符商品管理规则\r\n5.信用炒作商品管理规则, viewNumber=0, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (340, '2020-04-16 21:46:55', '2020-04-16 21:46:55', '编辑新闻公告：News [title=猿来入此校园二手市场账号注册规则, content=注册时请填写详细的注册信息，学号为必填项。, viewNumber=0, sort=1]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (341, '2020-04-16 21:48:12', '2020-04-16 21:48:12', '编辑新闻公告：News [title=关于猿来入此校园二手市场平台, content=猿来入此校园二手市场平台，配备了详细的视频开发教程。猿来入此网址：https://www.yuanlrc.com/, viewNumber=0, sort=1]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (342, '2020-04-16 21:48:24', '2020-04-16 21:48:24', '编辑新闻公告：News [title=关于猿来入此校园二手市场平台, content=猿来入此校园二手市场平台，配备了详细的视频开发教程。猿来入此网址：https://www.yuanlrc.com/, viewNumber=0, sort=2]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (343, '2020-04-18 14:23:52', '2020-04-18 14:23:52', '用户【猿来入此】于【2020-04-18 14:23:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (344, '2020-04-18 14:25:58', '2020-04-18 14:25:58', '添加菜单信息【Menu [name=网站设置, parent=null, url=, icon=mdi-settings, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (345, '2020-04-18 14:27:31', '2020-04-18 14:27:31', '添加菜单信息【Menu [name=友情链接, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/friend_link/list, icon=mdi-vector-line, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (346, '2020-04-18 14:28:36', '2020-04-18 14:28:36', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/friend_link/add, icon=mdi-plus, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (347, '2020-04-18 14:29:17', '2020-04-18 14:29:17', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/friend_likn/edit\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (348, '2020-04-18 14:29:45', '2020-04-18 14:29:45', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/friend_link/delete\'), icon=mdi-close-box, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (349, '2020-04-18 14:29:54', '2020-04-18 14:29:54', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (350, '2020-04-18 14:30:06', '2020-04-18 14:30:06', '用户【猿来入此】于【2020-04-18 14:30:06】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (351, '2020-04-18 14:32:25', '2020-04-18 14:32:25', '添加友情链接:FriendLink [name=猿来入此, url=http://programmer.ischoolbar.com, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (352, '2020-04-18 14:32:49', '2020-04-18 14:32:49', '添加友情链接:FriendLink [name=猿来入此Beta, url=https://www.yuanlrc.com/, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (353, '2020-04-18 15:38:16', '2020-04-18 15:38:16', '用户【猿来入此】于【2020-04-18 15:38:16】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (354, '2020-04-18 15:38:53', '2020-04-18 15:38:53', '编辑菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/friend_link/edit\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (355, '2020-04-18 15:39:04', '2020-04-18 15:39:04', '用户【猿来入此】于【2020-04-18 15:39:04】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (356, '2020-04-18 15:39:44', '2020-04-18 15:39:44', '编辑友情链接：FriendLink [name=猿来入此Beta, url=https://www.yuanlrc.com/, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (357, '2020-04-18 15:39:51', '2020-04-18 15:39:51', '编辑友情链接：FriendLink [name=猿来入此, url=http://programmer.ischoolbar.com, sort=1]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (358, '2020-04-18 15:40:05', '2020-04-18 15:40:05', '添加友情链接:FriendLink [name=dsfsd , url=fsd sdf ds水电费, sort=54]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (359, '2020-04-18 15:40:13', '2020-04-18 15:40:13', '添加友情链接:FriendLink [name=房顶上 的, url=房顶上 水电费, sort=4]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (360, '2020-04-18 15:40:20', '2020-04-18 15:40:20', '删除友情链接，友情链接ID：3', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (361, '2020-04-18 15:40:30', '2020-04-18 15:40:30', '添加友情链接:FriendLink [name=撒旦撒旦撒, url=撒旦撒, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (362, '2020-04-18 15:40:36', '2020-04-18 15:40:36', '添加友情链接:FriendLink [name=但撒旦撒撒, url=撒旦撒, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (363, '2020-04-18 15:40:43', '2020-04-18 15:40:43', '添加友情链接:FriendLink [name=的撒旦撒撒旦撒, url=萨达萨达, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (364, '2020-04-18 15:40:57', '2020-04-18 15:40:57', '添加友情链接:FriendLink [name=撒旦撒 萨达撒, url=萨达爱的撒, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (365, '2020-04-18 15:45:58', '2020-04-18 15:45:58', '添加友情链接:FriendLink [name=萨达, url=DSA, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (366, '2020-04-18 15:47:25', '2020-04-18 15:47:25', '添加友情链接:FriendLink [name=萨达, url=muyi.so, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (367, '2020-04-18 15:49:20', '2020-04-18 15:49:20', '添加友情链接:FriendLink [name=https://www.yuanlrc.com/	, url=https://www.yuanlrc.com/	, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (368, '2020-04-18 15:49:30', '2020-04-18 15:49:30', '添加友情链接:FriendLink [name=https://www.yuanlrc.com/	, url=http://www.yuanlrc.com, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (369, '2020-04-18 15:49:40', '2020-04-18 15:49:40', '添加友情链接:FriendLink [name=https://www.yuanlrc.com/	, url=www.yuanlrc.com, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (370, '2020-04-18 15:49:49', '2020-04-18 15:49:49', '添加友情链接:FriendLink [name=.yuanlrc.com, url=.yuanlrc.com, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (371, '2020-04-18 15:49:59', '2020-04-18 15:49:59', '删除友情链接，友情链接ID：2', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (372, '2020-04-18 15:50:03', '2020-04-18 15:50:03', '删除友情链接，友情链接ID：13', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (373, '2020-04-18 15:54:44', '2020-04-18 15:54:44', '批量删除友情链接，友情链接IDS：9,7,6,5', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (374, '2020-04-18 15:55:02', '2020-04-18 15:55:02', '批量删除友情链接，友情链接IDS：10,14,4', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (375, '2020-04-18 15:55:49', '2020-04-18 15:55:49', '批量删除友情链接，友情链接IDS：8,12', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (376, '2020-04-18 15:56:11', '2020-04-18 15:56:11', '编辑友情链接：FriendLink [name=猿来入此Beta, url=https://www.yuanlrc.com, sort=0]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (377, '2020-04-18 15:59:23', '2020-04-18 15:59:23', '用户【猿来入此】于【2020-04-18 15:59:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (378, '2020-04-18 15:59:56', '2020-04-18 15:59:56', '添加友情链接:FriendLink [name=猿来入此A, url=http://www.yuanlrc.com, sort=2]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (379, '2020-04-18 16:00:20', '2020-04-18 16:00:20', '添加友情链接:FriendLink [name=猿来入此B, url=http://www.yuanlrc.com, sort=3]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (380, '2020-04-18 16:00:31', '2020-04-18 16:00:31', '添加友情链接:FriendLink [name=猿来入此C, url=http://programmer.ischoolbar.com, sort=4]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (381, '2020-04-18 16:24:49', '2020-04-18 16:24:49', '用户【猿来入此】于【2020-04-18 16:24:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (382, '2020-04-18 16:26:45', '2020-04-18 16:26:45', '添加菜单信息【Menu [name=站点设置, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/site_setting/setting, icon=mdi-wrench, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (383, '2020-04-18 16:28:25', '2020-04-18 16:28:25', '添加菜单信息【Menu [name=提交修改, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/site_setting/save_setting, icon=mdi-marker-check, sort=0, isButton=true, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (384, '2020-04-18 16:28:37', '2020-04-18 16:28:37', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (385, '2020-04-18 16:29:27', '2020-04-18 16:29:27', '用户【猿来入此】于【2020-04-18 16:29:27】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (386, '2020-04-18 17:02:17', '2020-04-18 17:02:17', '修改网站设置:SiteSetting [siteName=第三方但是分, siteUrl=房顶上 第三方, logo1=20200418/1587200520604.jpg, logo2=20200418/1587200527982.jpg, qrcode=20200418/1587200535113.jpg, allRights=房顶上第三方 ]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (387, '2020-04-18 17:02:55', '2020-04-18 17:02:55', '修改网站设置:SiteSetting [siteName=第三方但是分, siteUrl=房顶上 第三方, logo1=20200418/1587200520604.jpg, logo2=20200418/1587200527982.jpg, qrcode=20200418/1587200535113.jpg, allRights=房顶上第三方 ]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (388, '2020-04-18 17:05:37', '2020-04-18 17:05:37', '修改网站设置:SiteSetting [siteName=第三方但是分, siteUrl=房顶上 第三方, logo1=20200418/1587200520604.jpg, logo2=20200418/1587200527982.jpg, qrcode=20200418/1587200535113.jpg, allRights=房顶上第三方 ]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (389, '2020-04-18 17:11:41', '2020-04-18 17:11:41', '用户【猿来入此】于【2020-04-18 17:11:41】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (390, '2020-04-18 17:11:50', '2020-04-18 17:11:50', '修改网站设置:SiteSetting [siteName=第三方但是分, siteUrl=房顶上 第三方, logo1=20200418/1587200520604.jpg, logo2=20200418/1587200527982.jpg, qrcode=20200418/1587200535113.jpg, allRights=©2016-2020【猿来入此】 版权所有]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (391, '2020-04-18 17:12:40', '2020-04-18 17:12:40', '修改网站设置:SiteSetting [siteName=猿来入此校园二手市场, siteUrl=www.yuanlrc.com, logo1=20200418/1587200520604.jpg, logo2=20200418/1587200527982.jpg, qrcode=20200418/1587200535113.jpg, allRights=©2016-2020【猿来入此】 版权所有]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (392, '2020-04-18 17:21:09', '2020-04-18 17:21:09', '修改网站设置:SiteSetting [siteName=猿来入此校园二手市场, siteUrl=www.yuanlrc.com, logo1=20200418/1587201658762.png, logo2=20200418/1587201663687.png, qrcode=20200418/1587201667179.png, allRights=©2016-2020【猿来入此】 版权所有]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES (393, '2021-12-07 22:53:13', '2021-12-07 22:53:13', '用户【我是管理员】于【2021-12-07 22:53:13】登录系统！', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (394, '2021-12-07 22:54:39', '2021-12-07 22:54:39', '批量删除友情链接，友情链接IDS：11,1,15,16,17', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (395, '2021-12-07 23:59:20', '2021-12-07 23:59:20', '用户【我是管理员】于【2021-12-07 23:59:20】登录系统！', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (396, '2021-12-08 00:20:31', '2021-12-08 00:20:31', '修改网站设置:SiteSetting [siteName=校园图书互借馆, siteUrl=www.yuanlrc.com, logo1=20211208/1638893753031.png, logo2=20200418/1587201663687.png, qrcode=20200418/1587201667179.png, allRights=©2021-2022【软工第十二小组】 版权所有]', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (397, '2021-12-08 00:28:31', '2021-12-08 00:28:31', '用户【我是管理员】于【2021-12-08 00:28:31】登录系统！', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (398, '2021-12-08 00:29:19', '2021-12-08 00:29:19', '删除新闻公告，新闻公告ID：1', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (399, '2021-12-08 00:59:04', '2021-12-08 00:59:04', '用户【我是管理员】于【2021-12-08 00:59:04】登录系统！', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (400, '2021-12-08 00:59:17', '2021-12-08 00:59:17', '修改网站设置:SiteSetting [siteName=校园图书互借馆, siteUrl=www.yuanlrc.com, logo1=20211208/1638896353626.png, logo2=20200418/1587201663687.png, qrcode=20200418/1587201667179.png, allRights=©2021-2022【软工第十二小组】 版权所有]', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (401, '2021-12-08 01:02:59', '2021-12-08 01:02:59', '用户【我是管理员】于【2021-12-08 01:02:58】登录系统！', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (402, '2021-12-08 01:03:49', '2021-12-08 01:03:49', '编辑新闻公告：News [title=校园图书互借馆发布图书规则, content=1.禁止和限制发布物品管理规则\r\n2.重复铺货商品管理规则\r\n3.支付方式不符商品管理规则\r\n4.商品价格、邮费不符商品管理规则\r\n5.信用炒作商品管理规则, viewNumber=0, sort=0]', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (403, '2021-12-08 11:49:11', '2021-12-08 11:49:11', '用户【我是管理员】于【2021-12-08 11:49:11】登录系统！', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (404, '2021-12-08 11:52:20', '2021-12-08 11:52:20', '编辑新闻公告：News [title=校园图书互借馆注册规则, content=注册时请填写详细的注册信息，学号为必填项。, viewNumber=0, sort=1]', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (405, '2021-12-08 11:58:59', '2021-12-08 11:58:59', '修改网站设置:SiteSetting [siteName=校园图书互借馆, siteUrl=www.yuanlrc.com, logo1=20211208/1638896353626.png, logo2=20200418/1587201663687.png, qrcode=20211208/1638935933463.jpg, allRights=©2021-2022【软工第十二小组】 版权所有]', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (406, '2021-12-08 13:29:06', '2021-12-08 13:29:06', '用户【我是管理员】于【2021-12-08 13:29:06】登录系统！', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (407, '2021-12-09 20:51:55', '2021-12-09 20:51:55', '用户【我是管理员】于【2021-12-09 20:51:55】登录系统！', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (408, '2021-12-09 20:52:32', '2021-12-09 20:52:32', '修改网站设置:SiteSetting [siteName=校园图书互借馆, siteUrl=www.yuanlrc.com, logo1=20211208/1638896353626.png, logo2=20211209/1639054347750.png, qrcode=20211208/1638935933463.jpg, allRights=©2021-2022【软工第十二小组】 版权所有]', '我是管理员');
INSERT INTO `ylrc_operater_log` VALUES (409, '2021-12-09 22:01:13', '2021-12-09 22:01:13', '修改网站设置:SiteSetting [siteName=十二因缘校园图书互借馆, siteUrl=www.yuanlrc.com, logo1=20211208/1638896353626.png, logo2=20211209/1639054347750.png, qrcode=20211208/1638935933463.jpg, allRights=©2021-2022【软工第十二小组】 版权所有]', '我是管理员');

-- ----------------------------
-- Table structure for ylrc_order_auth
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_order_auth`;
CREATE TABLE `ylrc_order_auth`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `mac` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_sn` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_ahqv988xcab5a70bem0piku3l`(`order_sn`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_order_auth
-- ----------------------------
INSERT INTO `ylrc_order_auth` VALUES (1, '2021-12-08 00:26:46', '2021-12-08 00:26:46', '5405DB36E6A7', '163870525317997240', '19858196682');

-- ----------------------------
-- Table structure for ylrc_report_goods
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_report_goods`;
CREATE TABLE `ylrc_report_goods`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_id` bigint(20) NULL DEFAULT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK6g0s4688rq2bnty1u1ev1rgly`(`goods_id`) USING BTREE,
  INDEX `FKmr7s3q3jpq824h69f5ip9gleq`(`student_id`) USING BTREE,
  CONSTRAINT `FK6g0s4688rq2bnty1u1ev1rgly` FOREIGN KEY (`goods_id`) REFERENCES `ylrc_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKmr7s3q3jpq824h69f5ip9gleq` FOREIGN KEY (`student_id`) REFERENCES `ylrc_studnet` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_report_goods
-- ----------------------------
INSERT INTO `ylrc_report_goods` VALUES (5, '2020-04-12 12:00:49', '2020-04-12 12:00:49', '涉嫌广告传销！', 20, 2);

-- ----------------------------
-- Table structure for ylrc_role
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role`;
CREATE TABLE `ylrc_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_role
-- ----------------------------
INSERT INTO `ylrc_role` VALUES (1, '2020-03-15 13:16:38', '2020-04-18 16:28:37', '超级管理员', '超级管理员拥有最高权限。', 1);
INSERT INTO `ylrc_role` VALUES (2, '2020-03-15 13:18:57', '2020-03-21 22:18:43', '普通管理员', '普通管理员只有部分权限', 1);
INSERT INTO `ylrc_role` VALUES (4, '2020-03-21 20:11:00', '2020-03-23 17:49:00', '测试角色', 'sadsa', 0);

-- ----------------------------
-- Table structure for ylrc_role_authorities
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role_authorities`;
CREATE TABLE `ylrc_role_authorities`  (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  INDEX `FKhj7ap1o1cjrl7enr9arf5f2qp`(`authorities_id`) USING BTREE,
  INDEX `FKg3xdaexmr0x1qx8omhvjtk46d`(`role_id`) USING BTREE,
  CONSTRAINT `FKg3xdaexmr0x1qx8omhvjtk46d` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKhj7ap1o1cjrl7enr9arf5f2qp` FOREIGN KEY (`authorities_id`) REFERENCES `ylrc_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_role_authorities
-- ----------------------------
INSERT INTO `ylrc_role_authorities` VALUES (2, 2);
INSERT INTO `ylrc_role_authorities` VALUES (2, 3);
INSERT INTO `ylrc_role_authorities` VALUES (2, 5);
INSERT INTO `ylrc_role_authorities` VALUES (2, 7);
INSERT INTO `ylrc_role_authorities` VALUES (2, 11);
INSERT INTO `ylrc_role_authorities` VALUES (2, 13);
INSERT INTO `ylrc_role_authorities` VALUES (2, 16);
INSERT INTO `ylrc_role_authorities` VALUES (4, 2);
INSERT INTO `ylrc_role_authorities` VALUES (4, 13);
INSERT INTO `ylrc_role_authorities` VALUES (4, 15);
INSERT INTO `ylrc_role_authorities` VALUES (1, 2);
INSERT INTO `ylrc_role_authorities` VALUES (1, 3);
INSERT INTO `ylrc_role_authorities` VALUES (1, 5);
INSERT INTO `ylrc_role_authorities` VALUES (1, 8);
INSERT INTO `ylrc_role_authorities` VALUES (1, 9);
INSERT INTO `ylrc_role_authorities` VALUES (1, 7);
INSERT INTO `ylrc_role_authorities` VALUES (1, 10);
INSERT INTO `ylrc_role_authorities` VALUES (1, 11);
INSERT INTO `ylrc_role_authorities` VALUES (1, 12);
INSERT INTO `ylrc_role_authorities` VALUES (1, 13);
INSERT INTO `ylrc_role_authorities` VALUES (1, 14);
INSERT INTO `ylrc_role_authorities` VALUES (1, 15);
INSERT INTO `ylrc_role_authorities` VALUES (1, 16);
INSERT INTO `ylrc_role_authorities` VALUES (1, 19);
INSERT INTO `ylrc_role_authorities` VALUES (1, 20);
INSERT INTO `ylrc_role_authorities` VALUES (1, 21);
INSERT INTO `ylrc_role_authorities` VALUES (1, 22);
INSERT INTO `ylrc_role_authorities` VALUES (1, 23);
INSERT INTO `ylrc_role_authorities` VALUES (1, 24);
INSERT INTO `ylrc_role_authorities` VALUES (1, 25);
INSERT INTO `ylrc_role_authorities` VALUES (1, 26);
INSERT INTO `ylrc_role_authorities` VALUES (1, 27);
INSERT INTO `ylrc_role_authorities` VALUES (1, 28);
INSERT INTO `ylrc_role_authorities` VALUES (1, 30);
INSERT INTO `ylrc_role_authorities` VALUES (1, 31);
INSERT INTO `ylrc_role_authorities` VALUES (1, 32);
INSERT INTO `ylrc_role_authorities` VALUES (1, 29);
INSERT INTO `ylrc_role_authorities` VALUES (1, 33);
INSERT INTO `ylrc_role_authorities` VALUES (1, 34);
INSERT INTO `ylrc_role_authorities` VALUES (1, 35);
INSERT INTO `ylrc_role_authorities` VALUES (1, 36);
INSERT INTO `ylrc_role_authorities` VALUES (1, 37);
INSERT INTO `ylrc_role_authorities` VALUES (1, 38);
INSERT INTO `ylrc_role_authorities` VALUES (1, 39);
INSERT INTO `ylrc_role_authorities` VALUES (1, 40);
INSERT INTO `ylrc_role_authorities` VALUES (1, 41);
INSERT INTO `ylrc_role_authorities` VALUES (1, 42);
INSERT INTO `ylrc_role_authorities` VALUES (1, 43);
INSERT INTO `ylrc_role_authorities` VALUES (1, 44);
INSERT INTO `ylrc_role_authorities` VALUES (1, 45);
INSERT INTO `ylrc_role_authorities` VALUES (1, 46);
INSERT INTO `ylrc_role_authorities` VALUES (1, 47);
INSERT INTO `ylrc_role_authorities` VALUES (1, 48);
INSERT INTO `ylrc_role_authorities` VALUES (1, 49);
INSERT INTO `ylrc_role_authorities` VALUES (1, 50);
INSERT INTO `ylrc_role_authorities` VALUES (1, 51);
INSERT INTO `ylrc_role_authorities` VALUES (1, 52);
INSERT INTO `ylrc_role_authorities` VALUES (1, 53);
INSERT INTO `ylrc_role_authorities` VALUES (1, 54);
INSERT INTO `ylrc_role_authorities` VALUES (1, 55);
INSERT INTO `ylrc_role_authorities` VALUES (1, 56);
INSERT INTO `ylrc_role_authorities` VALUES (1, 57);
INSERT INTO `ylrc_role_authorities` VALUES (1, 58);
INSERT INTO `ylrc_role_authorities` VALUES (1, 59);
INSERT INTO `ylrc_role_authorities` VALUES (1, 60);
INSERT INTO `ylrc_role_authorities` VALUES (1, 61);
INSERT INTO `ylrc_role_authorities` VALUES (1, 62);

-- ----------------------------
-- Table structure for ylrc_site_setting
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_site_setting`;
CREATE TABLE `ylrc_site_setting`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `all_rights` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo_1` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo_2` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qrcode` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_site_setting
-- ----------------------------
INSERT INTO `ylrc_site_setting` VALUES (1, '2020-04-18 17:02:17', '2021-12-09 22:01:13', '©2021-2022【软工第十二小组】 版权所有', '20211208/1638896353626.png', '20211209/1639054347750.png', '20211208/1638935933463.jpg', '十二因缘校园图书互借馆', 'www.yuanlrc.com');

-- ----------------------------
-- Table structure for ylrc_studnet
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_studnet`;
CREATE TABLE `ylrc_studnet`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `academy` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sn` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `head_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `password` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_5se32pxcytmbwgepjrjrdmvjr`(`sn`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_studnet
-- ----------------------------
INSERT INTO `ylrc_studnet` VALUES (2, '2020-04-06 12:52:02', '2020-04-18 18:05:56', '计算机科学与技术学院', '软件1102', '13656565656', '汪', '2982556166', '浙大城市学院', '31903095', '20200406/1586162585279.jpg', 1, '123');
INSERT INTO `ylrc_studnet` VALUES (3, '2020-04-11 15:20:12', '2020-04-11 15:23:29', '计算机与科学技术学院', '计算机1103', '13946598956', '小猪爱佩琪', '11956256', '清华大学', '31801111', '20200411/1586589655027.jpg', 1, '123');
INSERT INTO `ylrc_studnet` VALUES (4, '2020-04-11 23:35:40', '2020-04-15 21:48:47', '材料学院', '材料1104', '13656569456', '会飞的小乌龟', '1658555644', '同济大学', '31702524', '20200411/1586619722105.png', 1, '123');
INSERT INTO `ylrc_studnet` VALUES (5, '2020-04-12 20:58:29', '2021-12-09 21:45:15', '计算学院', '计算1911级', '13656565656', '起名字真难', '1122123213', '浙大城市学院', '31905222', '20211209/1639057515610.png', 1, '123');

-- ----------------------------
-- Table structure for ylrc_user
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_user`;
CREATE TABLE `ylrc_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `username` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_btsosjytrl4hu7fnm1intcpo8`(`username`) USING BTREE,
  INDEX `FKg09b8o67eu61st68rv6nk8npj`(`role_id`) USING BTREE,
  CONSTRAINT `FKg09b8o67eu61st68rv6nk8npj` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_user
-- ----------------------------
INSERT INTO `ylrc_user` VALUES (1, '2020-03-18 19:18:53', '2020-03-22 12:43:54', 'ylrc@qq.com', '20200322/1584850135123.jpg', '13356565656', '123456', 1, 1, '我是管理员', 1);
INSERT INTO `ylrc_user` VALUES (2, '2020-03-18 19:20:36', '2020-03-21 22:18:55', 'llq@qq.com', '20200318/1584530412075.jpg', '13918655656', '123456', 1, 1, '测试账号', 2);
INSERT INTO `ylrc_user` VALUES (5, '2020-03-20 20:42:19', '2020-03-23 17:50:19', 'yw@qq.com', '20200323/1584956702094.png', '13356565656', '123456', 1, 1, '小刘同志', 4);
INSERT INTO `ylrc_user` VALUES (7, '2020-03-30 22:59:02', '2020-03-30 22:59:02', 'llq@qq.com', '20200330/1585580308721.jpg', '13656565656', '123456', 1, 1, '张三同志', 2);

-- ----------------------------
-- Table structure for ylrc_wanted_goods
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_wanted_goods`;
CREATE TABLE `ylrc_wanted_goods`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sell_price` float NOT NULL,
  `trade_place` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `view_number` int(11) NOT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKqvrfd43yhp11er38hkfcxi103`(`student_id`) USING BTREE,
  CONSTRAINT `FKqvrfd43yhp11er38hkfcxi103` FOREIGN KEY (`student_id`) REFERENCES `ylrc_studnet` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_wanted_goods
-- ----------------------------
INSERT INTO `ylrc_wanted_goods` VALUES (1, '2020-04-11 18:00:07', '2020-04-11 22:57:47', '想买iphoneX 256G的，有没有人需要出售的呢？有愿意卖的请联系我。', '想买iphoneX 256G的，有吗', 899, '男生宿舍楼17号宿舍楼', 0, 3);
INSERT INTO `ylrc_wanted_goods` VALUES (4, '2020-04-11 23:29:32', '2020-04-11 23:29:32', '本人想买一个mac book pro，有没有人愿意卖的，有的话请联系我的QQ！', '想买一个mac book pro', 5999, '东华大学北门', 0, 3);
INSERT INTO `ylrc_wanted_goods` VALUES (5, '2020-04-11 23:31:01', '2020-04-11 23:31:01', '有没有快要毕业的学长想卖掉自己自行车的，本人自行车骑了没两天就被偷了，想买个二手的来骑，有愿意卖的请联系我QQ！', '有没有学长想卖自行车？', 98, '文汇路300弄', 0, 2);
INSERT INTO `ylrc_wanted_goods` VALUES (6, '2020-04-11 23:34:43', '2020-04-11 23:34:43', '本人笔记本电脑太卡了，想买一个配置比较高的笔记本电脑，有意者请联系我。', '想买一个笔记本电脑', 2699, '17号宿舍楼', 0, 2);
INSERT INTO `ylrc_wanted_goods` VALUES (7, '2020-04-11 23:37:18', '2020-04-11 23:37:18', '有人愿意卖自己的球拍嘛？最好是一副，有的请联系我！', '有没有人手上有羽毛球拍要出售的？', 55, '同济大学嘉定小区北门', 0, 4);

SET FOREIGN_KEY_CHECKS = 1;
