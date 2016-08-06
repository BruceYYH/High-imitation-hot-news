/*
Navicat MySQL Data Transfer

Source Server         : sqmmd
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2016-05-17 08:27:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `articleId` char(50) NOT NULL,
  `newsType_Name` char(50) NOT NULL,
  `articleTitle` char(100) NOT NULL,
  `articleTypeName` char(50) NOT NULL,
  `articleFrom` char(50) NOT NULL,
  `articleRemarkNum` int(11) default NULL,
  `articleTime` timestamp NULL default NULL,
  `articleLead` char(100) default NULL,
  `articleImg1` char(50) default NULL,
  `articleImg2` char(50) default NULL,
  `articleImg3` char(50) default NULL,
  `articleText` text NOT NULL,
  `articleCollectNum` int(11) default NULL,
  `articleGoodNum` int(11) default NULL,
  `isTT` int(11) default NULL,
  PRIMARY KEY  (`articleId`),
  KEY `FK_Relationship_8` (`newsType_Name`),
  CONSTRAINT `FK_Relationship_8` FOREIGN KEY (`newsType_Name`) REFERENCES `newstype` (`newsTypeName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('article1', '要闻', '习近平致信中国-中东欧国家最高法院院长会议', '时政新闻', '央视网', '1', '2016-05-16 21:16:47', '新华社南京5月4日电 中国－中东欧国家最高法院院长会议4日在江苏苏州开幕，国家主席习近平致贺信。', null, null, null, '习近平在贺信中代表中国政府和人民向会议的召开表示热烈祝贺，向出席会议的各国最高法院贵宾表示诚挚欢迎。\\n习近平指出，这次会议以“全球信息化时代的司法”为主题，围绕司法改革、司法公开等问题展开研讨，对加强国际司法交流合作，促进中国－中东欧国家合作（“16+1合作”）向更深层次拓展具有重要意义。\\n 习近平强调，“一带一路”建设把中国和中东欧国家更加紧密地联系在一起，贸易和人员往来更加密切，司法合作需求不断增加。希望中国和中东欧国家以这次会议为契机，在“16+1合作”框架内，深化司法交流合作，加强沟通互鉴，携手应对挑战，更加有效地打击犯罪、化解纠纷，共同营造规范有序的法治环境，为推进“一带一路”建设、实现中国与中东欧国家共同发展提供有力司法服务和保障。', '1', '1', '1');
INSERT INTO `article` VALUES ('article2', '要闻', '反腐再添力，官场“三爷”们要小心了！', '时政新闻', '央视网【微博】', '2', '2016-05-16 23:52:06', '近日，习近平《在第十八届中央纪律检查委员会第六次全体会议上的讲话》万字长文以全文的形式发表在《人民日报》上，这篇文章正是今年1月12日习近平在中央纪委全会上的讲话。', null, null, null, '从这次党报刊登的讲话内容来看，这篇讲话共论述了四个问题：一、党风廉政建设和反腐败斗争取得新的重大成效；二、坚定不移推进党风廉政建设和反腐败斗争；三、坚定不移推进全面从严治党；四、积极探索强化党内监督的有效途径。\r\n\r\n“海运仓内参”（ID：hycplb)记得，今年1月初，习近平新书《习近平关于党风廉政建设与反腐败斗争论述摘编》出版，在书中，他再次提到反腐“没有免罪的丹书铁券，也没有‘铁帽子王’”，反腐热度持续升温。\r\n习近平曾在省部级主要领导干部学习贯彻中共十八届四中全会的专题研讨班上曾警告，党纪国法不能成为“橡皮泥”、“稻草人”。他当时也说：“法治之下，任何人都不能心存侥幸，都不能指望法外施恩，没有免罪的‘丹书铁券’，也没有‘铁帽子王’”。 “铁帽子王”这个词再度成为反腐“热词”。“铁帽子王”一次在2015年两会上“走红”，成为援引典故的反腐“热词”。当时，有人问到2015年会不会有类似周永康一样的“大老虎”落马，政协新闻发言人吕新华回复称，“反腐没有铁帽子王”。或许因为“铁帽子王”并不是生活中常用的词，以至于身旁的翻译差点“卡壳”，最后译为“No one has impunity” （没人可以免罚）。为了惩治贪腐官员及其“三爷”，今年4月18日，在中央全面深化改革领导小组第二十三次会议上，习近平要求“在北京、广东、重庆、新疆开展规范领导干部配偶、子女及其配偶经商办企业行为”。这在当前的背景下无疑是十分重要的。', '2', '2', '0');

-- ----------------------------
-- Table structure for `mycollect`
-- ----------------------------
DROP TABLE IF EXISTS `mycollect`;
CREATE TABLE `mycollect` (
  `myCollectId` char(50) NOT NULL,
  `user_Id` char(50) NOT NULL,
  `article_Id` char(50) NOT NULL,
  `myCollectArticleTitle` char(100) default NULL,
  `myCollectState` char(50) default NULL,
  PRIMARY KEY  (`myCollectId`),
  KEY `FK_Relationship_12` (`user_Id`),
  CONSTRAINT `FK_Relationship_12` FOREIGN KEY (`user_Id`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mycollect
-- ----------------------------

-- ----------------------------
-- Table structure for `newstype`
-- ----------------------------
DROP TABLE IF EXISTS `newstype`;
CREATE TABLE `newstype` (
  `newsTypeName` char(50) NOT NULL,
  `newsTypeText` char(50) NOT NULL,
  `newsTypeArticleNum` int(11) NOT NULL,
  PRIMARY KEY  (`newsTypeName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newstype
-- ----------------------------
INSERT INTO `newstype` VALUES ('体育', '有关体育的新闻', '2');
INSERT INTO `newstype` VALUES ('娱乐', '娱乐圈的新闻', '2');
INSERT INTO `newstype` VALUES ('房产', '房地产的最新消息', '2');
INSERT INTO `newstype` VALUES ('文化', '博大精深', '2');
INSERT INTO `newstype` VALUES ('时尚', '世界最潮流', '2');
INSERT INTO `newstype` VALUES ('汽车', '赛车、轿车等', '2');
INSERT INTO `newstype` VALUES ('科技', '科技的力量', '2');
INSERT INTO `newstype` VALUES ('要闻', '重要的新闻', '2');
INSERT INTO `newstype` VALUES ('财经', '有关经济的新闻', '2');

-- ----------------------------
-- Table structure for `relatedarticle`
-- ----------------------------
DROP TABLE IF EXISTS `relatedarticle`;
CREATE TABLE `relatedarticle` (
  `relatedArticleId` char(50) NOT NULL,
  `id` char(50) NOT NULL,
  `article_Id` char(50) NOT NULL,
  `relatedArticleTitle` char(50) default NULL,
  `relatedArticleAbout` char(50) default NULL,
  `relatedArticleSrc` char(50) default NULL,
  `relatedTime` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`relatedArticleId`),
  KEY `FK_Relationship_2` (`article_Id`),
  CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`article_Id`) REFERENCES `article` (`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relatedarticle
-- ----------------------------
INSERT INTO `relatedarticle` VALUES ('related1', 'article2', 'article1', '反腐热潮:', '反腐再添力，官场“三爷”们要小心了！', null, '2016-05-17 01:12:11');

-- ----------------------------
-- Table structure for `remark`
-- ----------------------------
DROP TABLE IF EXISTS `remark`;
CREATE TABLE `remark` (
  `remarkId` char(50) NOT NULL,
  `article_Id` char(50) NOT NULL,
  `user_Id` char(50) NOT NULL,
  `userImg` char(50) NOT NULL,
  `remarkContent` char(200) NOT NULL,
  `remarkTime` timestamp NULL default NULL,
  `remarkNewsTypeName` char(50) NOT NULL,
  `remarkAticleTitle` char(100) NOT NULL,
  `remarkReplyNum` int(11) default NULL,
  `remarkGoodNum` int(11) default NULL,
  PRIMARY KEY  (`remarkId`),
  KEY `FK_Relationship_7` (`article_Id`),
  KEY `FK_Relationship_9` (`user_Id`),
  CONSTRAINT `FK_Relationship_7` FOREIGN KEY (`article_Id`) REFERENCES `article` (`articleId`),
  CONSTRAINT `FK_Relationship_9` FOREIGN KEY (`user_Id`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of remark
-- ----------------------------

-- ----------------------------
-- Table structure for `remarkreply`
-- ----------------------------
DROP TABLE IF EXISTS `remarkreply`;
CREATE TABLE `remarkreply` (
  `remarkReplyId` char(50) NOT NULL,
  `remark_Id` char(50) NOT NULL,
  `user_Id` char(50) NOT NULL,
  `userImg` char(50) NOT NULL,
  `remarkReplyContent` char(200) NOT NULL,
  `remarkReplyTime` timestamp NULL default NULL,
  PRIMARY KEY  (`remarkReplyId`),
  KEY `FK_Relationship_10` (`remark_Id`),
  KEY `FK_Relationship_11` (`user_Id`),
  CONSTRAINT `FK_Relationship_10` FOREIGN KEY (`remark_Id`) REFERENCES `remark` (`remarkId`),
  CONSTRAINT `FK_Relationship_11` FOREIGN KEY (`user_Id`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of remarkreply
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` char(50) NOT NULL,
  `telephone` char(11) default NULL,
  `password` char(50) default NULL,
  `email` char(50) default NULL,
  `img` char(50) default NULL,
  `state` int(11) default NULL,
  `activeCode` char(50) default NULL,
  `updateTime` timestamp NULL default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('ddwddw', '13298546523', '224224', '1412291918@qq.com', null, '1', '065165b0-28e7-40cd-b17b-8cb8c5258c6b', '2016-05-16 12:33:17');
INSERT INTO `user` VALUES ('小王子', '13298546523', '224224', '1412291918@qq.com', null, '0', '065165b0-28e7-40cd-b17b-8cb8c5258c6b', '2016-05-16 12:33:17');
